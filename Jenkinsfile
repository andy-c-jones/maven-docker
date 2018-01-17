podTemplate(label: 'label',
        containers: [containerTemplate(name: 'docker', image: 'docker', command: 'cat', ttyEnabled: true)],
        volumes: [hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock')]) {
    node('label') {
        stage('build docker image') {
            git 'https://github.com/andy-c-jones/maven-docker.git'
            container('docker') {
                stage('build') {
                    sh 'docker build .'
                }
            }
        }
    }
}
