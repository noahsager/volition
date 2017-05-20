class MarketingController < ApplicationController
  def home
    if ENV['SELF_HOSTED'] == 'true'
      redirect_to login_path
    end
  end

  def running_costs
    first_month = Date.new(2016, 10)
    @list_data = [
      {
        name: 'Heroku',
        color: 'rgba(150, 118, 185, 0.9)',
        description: 'Platform as a service. The Volition app is hosted on Heroku.',
        url: 'https://www.heroku.com/',
        data: [
          { x: first_month, y: 7 },
          { x: first_month.advance({ months: 1 }), y: 9.38 },
          { x: first_month.advance({ months: 2 }), y: 14.02 },
          { x: first_month.advance({ months: 3 }), y: 14.02 },
          { x: first_month.advance({ months: 4 }), y: 14.02 },
          { x: first_month.advance({ months: 5 }), y: 14.02 },
          { x: first_month.advance({ months: 6 }), y: 14.02 }
        ]
      },
      {
        name: 'Appsignal',
        color: 'rgba(225, 100, 41, 0.9)',
        description: 'Error and bug reporting.',
        url: 'https://appsignal.com/',
        data: [
          { x: first_month, y: 0 },
          { x: first_month.advance({ months: 1 }), y: 3.72 },
          { x: first_month.advance({ months: 2 }), y: 12 },
          { x: first_month.advance({ months: 3 }), y: 12 },
          { x: first_month.advance({ months: 4 }), y: 12 },
          { x: first_month.advance({ months: 5 }), y: 12 },
          { x: first_month.advance({ months: 6 }), y: 12 },
        ]
      },
      {
        name: 'ExpeditedSSL',
        color: 'rgba(37, 39, 43, 0.8)',
        description: 'SSL certificate provider.',
        url: 'https://www.expeditedssl.com/',
        data: [
          { x: first_month, y: 0 },
          { x: first_month.advance({ months: 1 }), y: 0 },
          { x: first_month.advance({ months: 2 }), y: 0 },
          { x: first_month.advance({ months: 3 }), y: 0 },
          { x: first_month.advance({ months: 4 }), y: 0 },
          { x: first_month.advance({ months: 5 }), y: 13.18 },
          { x: first_month.advance({ months: 6 }), y: 15 },
        ]
      }
    ].map { |item| OpenStruct.new(item) }

    gon.chartData = [{
      label: 'Heroku',
      lineTension: 0,
      data: [
        { x: first_month, y: 7 },
        { x: first_month.advance({ months: 1 }), y: 9.38 },
        { x: first_month.advance({ months: 2 }), y: 14.02 },
        { x: first_month.advance({ months: 3 }), y: 14.02 },
        { x: first_month.advance({ months: 4 }), y: 14.02 },
        { x: first_month.advance({ months: 5 }), y: 14.02 },
        { x: first_month.advance({ months: 6 }), y: 14.02 }
      ],
      backgroundColor: 'rgba(150, 118, 185, 0.9)',
      borderWidth: 1
    }, {
      label: 'Appsignal',
      lineTension: 0,
      data: [
        { x: first_month, y: 0 },
        { x: first_month.advance({ months: 1 }), y: 3.72 },
        { x: first_month.advance({ months: 2 }), y: 12 },
        { x: first_month.advance({ months: 3 }), y: 12 },
        { x: first_month.advance({ months: 4 }), y: 12 },
        { x: first_month.advance({ months: 5 }), y: 12 },
        { x: first_month.advance({ months: 6 }), y: 12 },
      ],
      backgroundColor: 'rgba(225, 100, 41, 0.9)',
      borderWidth: 1
    }, {
      label: 'Expedited SSL',
      lineTension: 0,
      data: [
        { x: first_month, y: 0 },
        { x: first_month.advance({ months: 1 }), y: 0 },
        { x: first_month.advance({ months: 2 }), y: 0 },
        { x: first_month.advance({ months: 3 }), y: 0 },
        { x: first_month.advance({ months: 4 }), y: 0 },
        { x: first_month.advance({ months: 5 }), y: 13.18 },
        { x: first_month.advance({ months: 6 }), y: 15 },
      ],
      backgroundColor: 'rgba(37, 39, 43, 0.8)',
      borderWidth: 1
    }]
  end

  def privacy; end
end
