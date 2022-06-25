module ApplicationHelper
  def default_meta_tags
    {
      site: 'Flava.com',
      title: 'Flava',
      reverse: true,
      separator: '|',
      description: 'Журнал о моде в музыкальной индустрии',
      keywords: 'hse, art, design, fashion, mediaservice, music',
      canonical: request.original_url,
      noindex: !Rails.env.production?,
      icon: [
        # { href: image_url('favicon.ico') },
        # { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'AwesomeMediaService.com',
        title: 'Flava',
        description: 'Журнал о моде в музыкальной индустрии',
        type: 'website',
        url: request.original_url,
        # image: image_url('login-page.png')
      }
    }
  end
end
