class Shops::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    callback_from :facebook
  end

  def google_oauth2
    callback_from :google_oauth2
  end

  private

  # oauth認証コールバック
  def callback_from(provider)
    provider = provider.to_s

    @shop = Shop.find_for_oauth(request.env['omniauth.auth'])

    if @shop.persisted?
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      sign_in_and_redirect @shop, event: :authentication
    else
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_shop_registration_url
    end
  end
end
