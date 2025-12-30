
import 'package:final_project/custom_colors.dart';
import 'package:flutter/cupertino.dart';

class GenerateSectionTitle extends StatelessWidget {
    final String imagePath;
    final String mainTitle;
    final String subTitle;


    const GenerateSectionTitle({
        required this.imagePath,
        required this.mainTitle,
        required this.subTitle,
        super.key
    });

    @override
    Widget build(BuildContext context) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    child: Image.asset(
                        imagePath,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                    ),
                ),
                SizedBox(
                    height: 15,
                ),
                Text(
                    mainTitle,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: AppColors.mainText
                    ),
                ),
                Text(
                    subTitle,
                    style: TextStyle(
                        fontSize: 16
                    ),
                ),
                SizedBox(
                    height: 30,
                ),
            ],
        );
    }
}
