from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField, BooleanField, TextAreaField
from wtforms.validators import DataRequired, Length, Email


class SignupForm(FlaskForm):
    firstname = StringField('First Name', validators=[DataRequired(), Length(min=3, max=20)])
    lastname = StringField('Last Name', validators=[DataRequired(), Length(min=3, max=20)])
    password = PasswordField('Password', validators=[DataRequired(), Length(min=5, max=20)])
    email = StringField('Email', validators=[DataRequired(), Email(message='Invalid email address'), Length(max=100)])
    submit = SubmitField('Sign Up!')

class LoginForm(FlaskForm):
    email = StringField('Email', validators=[DataRequired(), Email()])
    password = PasswordField('Password', validators=[DataRequired(), Length(min=5,max=20)])
    submit = SubmitField('Log in')

class ContactForm(FlaskForm):
    name = StringField('Name')
    email = StringField('Email')
    subject = StringField('Subject')
    message = TextAreaField('Message')
    submit = SubmitField('Send')