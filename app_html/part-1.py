import dash
from dash import html

app = dash.Dash(__name__)

app.layout = html.Div(children=[
    html.Img(
        src='assets\\sustainability.jpg',
        style={'width': '50%', 'border': '1px solid red'},
        alt='image'),

    html.H1(children='Roberto Téllez', style={'color': '#ff5733'}),
    html.P('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s', style={
           'color': 'green', 'border': '2px solid blue'})
])

if __name__ == '__main__':
    app.run_server(debug=True)
