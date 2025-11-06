import 'package:flutter/material.dart';
import 'package:fruitapp/core/app_image_assets.dart';
import 'package:timelines_plus/timelines_plus.dart';

class OrderTrackingPage extends StatelessWidget {
  const OrderTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         
              SizedBox(
                width: 70,
                child: FixedTimeline.tileBuilder(
                  builder: TimelineTileBuilder.connected(
                    itemCount: 5,
                    connectionDirection: ConnectionDirection.before,
                    connectorBuilder: (context, index, type) {
                      return Connector.solidLine(
                        color: Colors.grey,
                        thickness: 2,
                      );
                    },
                    indicatorBuilder: (context, index) {
                      if (index == 0) {
                        return DotIndicator(
                          size: 66,
                          child: CircleAvatar(
                            radius: 33,
                            backgroundColor:  Color(0xffEBF9F1),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                  Assets.assetsImagesTrackRequstImage),
                            ),
                          ),
                        );
                      }
                       if (index == 1) {
                        return DotIndicator(
                          size: 66,
                          child: CircleAvatar(
                            radius: 33,
                            backgroundColor:  Color(0xffEBF9F1),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                
                                  Assets.assetsImagesRequstChecked),
                            ),
                          ),
                        );
                      }
                       if (index == 2) {
                        return DotIndicator(
                          size: 66,
                          child: CircleAvatar(
                            radius: 33,
                            backgroundColor:  Color(0xffEBF9F1),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                  Assets.assetsImagesShippingLocation),
                            ),
                          ),
                        );
                      }
                       if (index == 3) {
                        return DotIndicator(
                          size: 66,
                          child: CircleAvatar(
                            radius: 33,
                            backgroundColor:  Color(0xffEBF9F1),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                  Assets.assetsImagesRequstShippingImage),
                            ),
                          ),
                        );
                      }
                      //0xffEBF9F1
                      return const DotIndicator(
                          size: 66,
                          child: CircleAvatar(
                            radius: 33,
                            backgroundColor:  Color(0xffEBF9F1),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                  Assets.assetsImagesRequstDeliverd),
                            ),
                          ),
                        );
                    },
                    indicatorPositionBuilder: (_, __) => 0.3, // وسط كل عنصر
                    itemExtentBuilder: (context, index) => 120, // المسافة بين النقط
                  ),
                ),
              ),

              // ✅ النصوص على الشمال
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
          
                  children: [
                    _buildItem("تتبع الطلب", "22 مارس 2024"),
                    _buildItem("قبول الطلب", "23 مارس 2024"),
                    _buildItem("تم شحن الطلب ", "24 مارس 2024"),
                    _buildItem("خرح للتسليم", "25 مارس 2024"),
                    _buildItem("تم التسليم", "25 مارس 2024"),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }

  Widget _buildItem(String title, String date) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [

          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          Text(date, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 13),
          const Divider(
            endIndent: 50,
          ),
        ],
      ),
    );
  }
}
