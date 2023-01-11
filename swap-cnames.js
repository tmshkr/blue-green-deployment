const { exec } = require("child_process");

exec(
  `aws elasticbeanstalk swap-environment-cnames --source-environment-name ${process.env.BLUE_ENV} --destination-environment-name ${process.env.GREEN_ENV}`,
  (error, stdout, stderr) => {
    if (error) {
      console.error(`error: ${error.message}`);
      process.exit(1);
    }
    if (stderr) {
      console.error(`stderr: ${stderr}`);
      process.exit(1);
    }
  }
);
