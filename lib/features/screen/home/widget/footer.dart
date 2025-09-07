import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';
import 'package:test_bugbaboo/core/constants/color.dart';
import 'package:test_bugbaboo/features/screen/home/widget/footer_expansion.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          color: Color(0xFFeae9ff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText('ติดตาม BUGABOO.TV Official', fontSize: 24),
              const SizedBox(height: 24),
              AppText(
                'เชื่อมต่อกับเราและอัปเดตข่าวสารล่าสุดจาก BUGABOO.TV ได้ผ่านช่องทางต่างๆ เพื่อไม่พลาดทุกความเคลื่อนไหวและโปรโมชันพิเศษ!',
                fontSize: 16,
                maxLines: 10,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  SvgPicture.asset('assets/images/facebook.svg', height: 24),
                  const SizedBox(width: 24),
                  SvgPicture.asset('assets/images/x.svg', height: 24),
                  const SizedBox(width: 24),
                  SvgPicture.asset('assets/images/instagram.svg', height: 24),
                  const SizedBox(width: 24),
                  SvgPicture.asset('assets/images/tiktok.svg', height: 24),
                  const SizedBox(width: 24),
                  SvgPicture.asset('assets/images/youtube.svg', height: 24),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(24),
          color: ColorRes.primary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 28,
                child: Image.asset(
                  'assets/images/bugaboo_tv.png',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              AppText(
                'ดูละครย้อนหลัง โปรแกรมถ่ายทอดสดฟุตบอล คลิปรายการทีวีย้อนหลัง ดูหนังออนไลน์',
                fontSize: 16,
                maxLines: 10,
                color: Colors.white,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  SvgPicture.asset('assets/images/facebook.svg', height: 24),
                  const SizedBox(width: 24),
                  SvgPicture.asset('assets/images/x2.svg', height: 24),
                  const SizedBox(width: 24),
                  SvgPicture.asset('assets/images/instagram.svg', height: 24),
                  const SizedBox(width: 24),
                  SvgPicture.asset('assets/images/tiktok.svg', height: 24),
                  const SizedBox(width: 24),
                  SvgPicture.asset('assets/images/youtube.svg', height: 24),
                ],
              ),
              const SizedBox(height: 12),
              FooterExpansion(),
              const SizedBox(height: 12),
              AppText(
                'ข้อกำหนดและเงื่อนไขการใช้งาน/ข้อกำหนดและเงื่อนไขการชำระค่าบริการ/นโยบายความเป็นส่วนตัว/นโยบายการใช้คุกกี้/ข้อมูลบริษัท/ศูนย์ช่วยเหลือ/พันธมิตร',
                fontSize: 18,
                color: Colors.white,
                maxLines: 10,
              ),
              GridView.count(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 3.5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Image.network(
                    'https://bof-shortseries.bugaboo.tv/images/App-Store-Badge.png',
                  ),
                  Image.network(
                    'https://bof-shortseries.bugaboo.tv/images/Google-Play-Badge.png',
                  ),
                  Image.network(
                    'https://bof-shortseries.bugaboo.tv/images/Huawel-AppGallery-Badge.png',
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Divider(thickness: 1, color: Colors.grey),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: AppText(
                      '© BUGABOO.TV Official Site. Copyright ©2025  BBTV New Media Co.,Ltd. All rights reserved.',
                      fontSize: 18,
                      color: Colors.grey,
                      maxLines: 4,
                    ),
                  ),
                  Image.network(
                    'https://lvs.truehits.in.th/goggen.php?hc=t0030320&rand=749515&bv=2956&rf=bookmark&web=GKXjEjma%2bFOAucQF6P33rA%3D%3D&bn=Netscape&ss=390*844&sc=30&sv=1.3&ck=y&ja=n&vt=7EBFD278.6&fp=d&fv=-&truehitspage=home&truehitsurl=https%3a//www.bugaboo.tv/th/',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
