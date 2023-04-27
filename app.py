from flask import Flask, render_template, request, redirect, session, flash
import mysql.connector
from forms import SignupForm, LoginForm, ContactForm
import pandas as pd


app = Flask(__name__)
app.secret_key = 'your_secret_key'

# Connect to the database
cnx = mysql.connector.connect(user='root',
                              password='1234554321',
                              host='localhost',
                              database='test'
                              )


@app.route('/')
def index():
    return render_template('index.html')

@app.route('/contactForm', methods=['GET', 'POST'])
def contactForm():
    form = ContactForm()
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        subject = request.form['subject']
        message = request.form['message']
        res = pd.DataFrame({'name':name, 'email':email, 'subject':subject, 'message':message}, index=[0])
        res.to_csv('./contactMessage.csv')
        print("The data are saved")
    else:
        return render_template('contactForm.html', form=form)
    
    return render_template('contactForm.html', form=form)


@app.route('/loginform', methods=['GET', 'POST'])
def loginform():
    form = LoginForm()
    error_statement = ''
    if form.validate_on_submit() and request.method == 'POST':
        # Get the user's input from the form
        email = request.form['email']
        password = request.form['password']

        # Create a cursor
        cursor = cnx.cursor()

        # Check if the user exists in the database
        query = 'SELECT * FROM users WHERE email = %s AND password = %s'
        cursor.execute(query, (email, password))

        # Fetch the results
        results = cursor.fetchall()
        

        # If the user exists, log them in
        if results:
            session['email'] = email
            flash(f'Login successful for {form.email.data}', category='success')
            return redirect('/dashboard')
        else:
            # Check if the user entered a valid email and password
            query = 'SELECT * FROM users WHERE email = %s AND password = %s'
            cursor.execute(query, (email, password))
            results = cursor.fetchone()

            if not results:
                error_statement = 'Incorrect email or password'
                return render_template('loginform.html', error_statement=error_statement, form=form)
            
            # If the user doesn't exist, redirect to the registration page
    return render_template('loginform.html', form=form)
            

@app.route('/studentList', methods=['GET'])
def studentList():
    return render_template('student-list.html')

@app.route('/studentProfile', methods=['GET'])
def studentProfile():
    return render_template('student-profile.html')

@app.route('/studentProfile2', methods=['GET'])
def studentProfile2():
    return render_template('student-profile2.html')

@app.route('/studentProfile3', methods=['GET'])
def studentProfile3():
    return render_template('student-profile3.html')

@app.route('/studentProfile4', methods=['GET'])
def studentProfile4():
    return render_template('student-profile4.html')

@app.route('/studentProfile5', methods=['GET'])
def studentProfile5():
    return render_template('student-profile5.html')

@app.route('/studentProfile6', methods=['GET'])
def studentProfile6():
    return render_template('student-profile6.html')

@app.route('/studentProfile7', methods=['GET'])
def studentProfile7():
    return render_template('student-profile7.html')

@app.route('/studentProfile8', methods=['GET'])
def studentProfile8():
    return render_template('student-profile8.html')




@app.route('/registration', methods=['GET', 'POST'])
def registration():
    form = SignupForm()
    if form.validate_on_submit() and request.method == 'POST':
        firstname = form.firstname.data
        lastname = form.lastname.data
        email = form.email.data
        password = form.password.data
        cursor = cnx.cursor()

       
        # Insert data into database
        cursor = cnx.cursor()
        query = 'INSERT INTO users (firstname, lastname, email, password) VALUES (%s, %s, %s, %s)'
        cursor.execute(query, (firstname, lastname, email, password))
        cnx.commit()
        cursor.close()


        # Set session variables
        session['email'] = email
        session['firstname'] = firstname
        session['lastname'] = lastname
        flash(f"Account created successfully for {form.firstname.data}", category='success')
        return redirect('/dashboard')
    return render_template('registration.html', form=form)


    
@app.route('/dashboard')
def dashboard():
    if 'email' in session:
        email = session['email']
        firstname = session.get('firstname')
        lastname = session.get('lastname')
        cursor = cnx.cursor()
        query = 'SELECT * FROM users WHERE email = %s'
        cursor.execute(query, (email,))
        user = cursor.fetchone()
        cursor.close()
        if user:
            firstname = user[1]
            lastname = user[2]
            return render_template('dashboard.html', firstname=firstname, lastname=lastname, email=email)
        else:
            return redirect('/')
    else:
        return redirect('/')


@app.route('/logout')
def logout():
    return redirect('/index')

if __name__ == '__main__':
    app.run(debug=True)


