import 'package:flutter/material.dart';


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isChecked = false;
  Widget _buildStep({
    required IconData icon,
    required String title,
    required String description,
  })
  {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          radius: 25,
          child: Icon(
            icon,
            color: Colors.blue,
            size: 30,
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _buildFeatureCard({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          radius: 25,
          child: Icon(
            icon,
            color: color,
            size: 30,
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTestimonialCard() {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            "I was worried when I needed some extra money. I was informed by my friend about this InstaMoney app. I applied and got a loan very quick. Thanks a lot.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Icon(Icons.person, color: Colors.blue),
              ),
              SizedBox(width: 10),
              Text(
                "Gayathri S",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              Row(
                children: List.generate(
                  5,
                      (index) => Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGoogleRatingCard() {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
                  (index) => Icon(
                Icons.star,
                size: 16,
                color: index == 4 ? Colors.amber.withOpacity(0.5) : Colors.amber,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Rated 4.3 by 520K + customers.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.07,


              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Icon(Icons.money, size: 60, color: Colors.blue),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.blue),
                      SizedBox(width: 5),
                      Text(
                        "Welcome to InstaMoney",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "GET LOAN APPROVAL ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "IN\nJUST 2 MINUTES",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Sign up below to apply for your InstaMoney loan.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _FeatureCard(
                        icon: Icons.access_time,
                        label: "Fast Cash\nDisbursal",
                      ),
                      _FeatureCard(
                        icon: Icons.mobile_friendly,
                        label: "Fully Digital\nProcess",
                      ),
                      _FeatureCard(
                        icon: Icons.assignment,
                        label: "Minimal\nDocumentation",
                      ),
                    ],
                  ),
                  SizedBox(height: 30),

Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Transform.translate(
      offset: Offset(0, -15), // Move the checkbox up slightly
      child: GestureDetector(
            onTap: () {
              setState(() {
                _isChecked = !_isChecked;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.blue, width: 2), // Add border width
                borderRadius: BorderRadius.circular(4), // Add border radius
                color: _isChecked ? Colors.blue : Colors.transparent,
              ),
              width: 20,
              height: 20,
              child: _isChecked
                  ? Icon(Icons.check, size: 16, color: Colors.white)
                  : null,
            ),
      ),
    ),
    SizedBox(width: 5), // Add some space between the custom checkbox and the text
    Expanded(
      child: Text(
            "I hereby provide my consent to Innofin Solutions Private Limited "
            "(here with referred as InstaMoney) for sharing my personal details, "
            "loan amount, interest rate, and credit score with potential lenders "
            "on the platform to process my loan application.",
            style: TextStyle(fontSize: 11, color: Colors.black87),
            textAlign: TextAlign.left,
      ),
    ),
  ],
),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Add your navigation or logic here
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      primary: Colors.blue,
                    ),
                    child: Text("SIGN UP/LOGIN"),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Text(
                      "InstaMoney is powered by Innofin Solutions Pvt Ltd.- which is a RBI registered NBFC-P2P Platform",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),

                ],
              ),
            ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "GET INSTANT CASH LOAN",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Sign up now to apply and get instant approval on your loan request. It’s faster than you can imagine. Here’s how it works.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20),
              _buildStep(
                icon: Icons.person_add,
                title: "Create an Account",
                description: "Sign up with your Mobile Number",
              ),
              SizedBox(height: 20),
              _buildStep(
                icon: Icons.fact_check,
                title: "Check Eligibility",
                description:
                "Fill in some basic details to check eligibility and get results instantly.",
              ),
              SizedBox(height: 20),
              _buildStep(
                icon: Icons.file_present,
                title: "Complete Application",
                description:
                "Complete KYC & upload documents such as PAN, Bank Statement.",
              ),
              SizedBox(height: 20),
              _buildStep(
                icon: Icons.account_balance_wallet,
                title: "Get Money in your Bank Account",
                description:
                "Get approved and loan disbursed within 24 hours.",
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "WHY INSTAMONEY?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We are RBI registered",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              _buildFeatureCard(
                icon: Icons.verified,
                color: Colors.blue,
                title: "NBFC - P2P",
                subtitle: "Registered with RBI",
              ),
              SizedBox(height: 20),
              Text(
                "Trusted by lakhs of users",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              _buildFeatureCard(
                icon: Icons.receipt_long,
                color: Colors.amber,
                title: "1.5 Cr+",
                subtitle: "Loan Applications so far",
              ),
              SizedBox(height: 20),
              _buildTestimonialCard(),
              SizedBox(height: 20),
              Text(
                "Delivered superior products",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              _buildGoogleRatingCard(),
              SizedBox(height: 20),
             Center(
  child: Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: "Have a referral code? ",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
        TextSpan(
          text: "Enter here.",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    textAlign: TextAlign.center,
  ),
),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SIGN UP/LOGIN",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ],
          ),
        ),


          ],
        ),
      ),
    );
  }
}
class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const _FeatureCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 19, right: 19, top: 15, bottom: 11),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 30, color: Colors.blue),
          SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.black87,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}