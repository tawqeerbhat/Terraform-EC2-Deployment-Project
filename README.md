

<h1>Terraform EC2 Deployment Project</h1>

<h2>Overview</h2>
<p>This project demonstrates how to use Terraform to provision an Amazon EC2 instance along with a security group that allows HTTP traffic. The goal is to provide a simple, manageable setup for deploying a web server on AWS.</p>

<h2>Technologies Used</h2>
<ul>
    <li><strong>Terraform</strong>: Infrastructure as Code (IaC) tool for managing cloud resources.</li>
    <li><strong>AWS</strong>: Amazon Web Services to host the EC2 instance.</li>
</ul>

<h2>Prerequisites</h2>
<ul>
    <li>An AWS account.</li>
    <li>Terraform installed on your local machine.</li>
    <li>AWS CLI configured with appropriate permissions.</li>
    <li>A private key (<code>.pem</code> file) for SSH access to the EC2 instance.</li>
</ul>

<h2>Project Structure</h2>
<pre>
terraform-ec2-deployment/
├── main.tf
└── README.md
</pre>

<h2>Steps to Deploy EC2 Instance</h2>

<h3>1. Configure AWS Provider</h3>
<p>Set up the AWS provider in your Terraform configuration file.</p>

<h3>2. Create a Security Group</h3>
<p>Define a security group to allow HTTP traffic.</p>

<h3>3. Create an EC2 Instance</h3>
<p>Configure the EC2 instance resource and associate it with the security group.</p>

<h3>4. Output the Public IP</h3>
<p>Add an output block to display the public IP address of the EC2 instance.</p>

<h3>5. Initialize and Apply the Configuration</h3>
<p>Run the following commands to deploy your resources:</p>
<pre><code>terraform init   # Initialize the working directory
terraform apply  # Apply the changes to create the EC2 instance</code></pre>

<h3>6. Access the EC2 Instance</h3>
<p>Connect to your EC2 instance using SSH:</p>
<pre><code>ssh -i /path/to/your/private-key.pem ec2-user@&lt;public-ip&gt;</code></pre>

<h3>7. Install and Test Web Server (Optional)</h3>
<p>Optionally, install a web server like Apache on your EC2 instance.</p>

<h3>8. Clean Up</h3>
<p>To avoid ongoing charges, destroy the resources when you’re done:</p>
<pre><code>terraform destroy</code></pre>

<h2>Conclusion</h2>
<p>This project serves as a foundational exercise in using Terraform for cloud infrastructure management on AWS.</p>

<h2>Repository Information</h2>
<ul>
    <li><strong>GitHub Repository</strong>: <a href="#">Link to your GitHub repository</a></li>
    <li><strong>Author</strong>: [Your Name]</li>
    <li><strong>Date</strong>: [Date of completion]</li>
</ul>

</body>
</html>
