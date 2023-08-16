import streamlit as st
from st_functions import st_button, load_css
from PIL import Image

load_css()

col1, col2, col3 = st.columns(3)
col2.image(Image.open('./imagens/XPORCENTO_LOGO-positivo.jpg'))


st.header('X-PORCENTO')

st.info('Somos a melhor em resolver os seus problemas com tomada de decisão.')

icon_size = 20

st_button('medium', 'https://medium.com/', 'Read my Blogs', icon_size)
st_button('twitter', 'https://twitter.com/', 'Follow me on Twitter', icon_size)
st_button('linkedin', 'https://www.linkedin.com/in/', 'Siga-nos no LinkedIn', icon_size)
st_button('newsletter', 'https://sendfox.com/', 'Sign up for my Newsletter', icon_size)
st_button('cup', 'https://www.buymeacoffee.com/', 'Buy me a Coffee', icon_size)
