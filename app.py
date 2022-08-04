from flask import Flask, render_template

app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def homepage():
    return render_template('homepage.html')


@app.route('/each_album')
def each_album():
    return render_template('each_album.html')


@app.route('/each_review')
def each_review():
    return render_template('each_review.html')


@app.route('/genre')
def genre():
    return render_template('genre.html')


@app.route('/new_music')
def new_music():
    return render_template('new_music.html')


@app.route('/reviews')
def reviews():
    return render_template('reviews.html')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)
