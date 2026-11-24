pipeline {
agent any

stages {
stage(&#39;Clone&#39;) {
steps {
echo &#39;Cloning repository...&#39;
checkout scm
}
}

stage(&#39;Build&#39;) {
steps {
echo &#39;Installing dependencies...&#39;
sh &#39;pip3 install --break-system-packages -r requirements.txt&#39;
}
}

stage(&#39;Test&#39;) {
steps {
echo &#39;Running test cases...&#39;
sh &#39;python3 -m pytest test_app.py -v&#39;
}
}
}

post {
success {
echo &#39;Pipeline finished successfully!&#39;
}
failure {
echo &#39;Pipeline failed. Check console output above.&#39;
}
}
}