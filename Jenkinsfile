
pipeline {
    agent any
    stages {
         stage('Setup Python Virtual Environment'){
            steps {
                sh '''
                    chmod +x envsetup.sh
                    ./envsetup.sh
                    '''
            }
        }
//         stage('test'){
//             steps {
//                 sh '''
//                     source env/bin/activate
//                     python3 manage.py test
//                 '''
//             }
//         }


        stage('Setup gunicorn service'){
            steps {
                sh '''
                    chmod +x gunicorn.sh
                    ./gunicorn.sh
                    '''
            }
        }
//         stage('Setup Nginx'){
//             steps {
//                 sh '''
//                     chmod +x nginx.sh
//                     ./nginx.sh
//                     '''
//             }
//         }
    }
}