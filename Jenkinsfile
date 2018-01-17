podTemplate(label: label,
        containers: [containerTemplate(name: 'docker', image: 'docker', command: 'cat', ttyEnabled: true)],
        volumes: [hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock')]) {
    node('label') {
        stage('build docker image') {
            container('docker') {
                stage('build') {
                    sh 'docker build .'
                }
            }
        }
    }
}
