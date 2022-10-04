import 'package:conatus/main.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_flare/actors/smart_flare_actor.dart';

class Coor extends StatefulWidget {
  @override
  _CoorState createState() => _CoorState();
}

class _CoorState extends State<Coor> {
  @override
  Widget build(BuildContext context) {
    return PageView(scrollDirection: Axis.vertical,children: <Widget>[
FacCoor(),FourthCoor(),ThirdCoor(),SecondCoor()
    ],);
  }
}


class ThirdCoor extends StatelessWidget {
  List<String> name = [
    "Abhinav Srivastav","Adesh Khanna","Arsh Ahmed","Ayush Kumar","Devanshu Gautam","Ekta Tiwari","Manvi Srivastava","Manya Bhatia","Sayash Chaudhary","Shaban Ansari","Shikhar Agarwal","Shubhangi Srivastava","Sparsh Gupta","Tanya Agarwal","Tanya Srivastava"
  ];
  List<String> url = [
    "https://wnsmoq.sn.files.1drv.com/y4mu3UTEu1L5-3ADQ5ci6y38Bh9UkJQr6e0GlRYRbtRjezHKCA_ztTMCkx-sQ85vb3MkNzXNjn5KNNlu8tvOxcNntGlhW-nrsE-vpjKux2hGg5S6ABu8IbYAcuXicrkj1-WYToZWVizaYkDeeIX5KYDqBxOoKAaI7bf_-sOL-RZHfkLrwZr6Bia3399f8zjdZCERSfH5UzVpfI6ajd0Efm5IA?width=494&height=524&cropmode=none",
    "https://jwdlqg.sn.files.1drv.com/y4mtXcuygRUgwcqqkC5QCoXXtG9K8TWPedFS7F527RDwhNp401PqWl2J16zcJKiBRfQM5H-Cfo0CgZZTHn47qqwm3jU2fsaENWUL2dLqEVQBy3tx_XkSy-Mz7plhRae2qAS_hl08hsR02FTRo79g5L9aUqamS-zhOjbMfOqldA63QkGoj6jSjqQvVZHjj3fNKUUDMdu3Ro22YfnyFYBQl_OeQ?width=579&height=579&cropmode=none",
    "https://jwfy5a.sn.files.1drv.com/y4m7ZuyyUu8X2u3la6AQHwJhcSqFwfzqlnVhRpQHYi3eosjuH57KhNWPN8fYNub1p5GcSiRKhGE0mzGDS7si5ctQkUXuJ6ZiNw_KybwDwYbFr0Bt6S7Do-JWDmBS9NEqb_0EuDcms_kipTD9ESB4-3EL8haxBUi70MTNcY_FTvGcKn8vxfNDRsxgg7qg9pv6LmhVGwV7IYED5XLBCjNzwLhyw?width=531&height=535&cropmode=none",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1700052.jpg?alt=media&token=66773550-384d-46b6-adbb-113e89441f6f",
    "https://jwcozg.sn.files.1drv.com/y4m8mOg3NF_AVQ_56kj0oR7Tf3ybG2GyNzEOYFjmTZrYLkzJ0GQf75CDE510U8I9Sq3vIJTs-Rl-G4aHAzFp-VC1RtpzxN9FXbFLnKBRQpuZV30ede1TZT4QwtDFumrLxwW7vntYzQqxg6QhKIhEl5NLWppTIeR4BEyVEWMKExbvDlC1tjtnAeJKsU4tV0mu_HVAwF-W-RFw_XDUxAUKJ5Flg?width=620&height=650&cropmode=none",
    "https://wntxla.sn.files.1drv.com/y4mkcbZil6WjJZIY_J-pDS1mt3hK44zWYjWFjIv7bjmK74X5uDarzohMPyEogkLxDYEod0MebaMqtWOnWaOBsqQMpXRY0PJtYtvFnlXor2uewEJndvu5nUWI9RfglCCDRKXC-uODasqqn6DmcYQX6bvuv5DOUvAUR5TuQ2-uF4h5sJEE4n5YBNvnUTmcGI2AR5yPdmyaSNrcPqN0Jjh_teeHw?width=614&height=660&cropmode=none",
    "https://jwenwq.sn.files.1drv.com/y4mtKBsf-53HLNBU1tEfxBbdeBfZ5VOjXLpIIJkTwr6jjFhbYZ-yU6JVu5-spGoKJHD2oBCxAp1mqTf1ecJJXUACk0Be3OhSb0RoLaC8y4n8qH8WYX9yYJI5ACPYm0zYlbcuNvbJHPsUrB54iomIQMfHz0rfoo8eLmao26eHCIhgPuUS6oep5MdOVQeQDooYGfr9FC96iA6N6BE6EHh2p0KfA?width=563&height=556&cropmode=none",
    "https://jwfdqg.sn.files.1drv.com/y4mYaSl78TYHSKWW8il_CYc81MFOJ6XwTqRIMgnIzA0BiJk10SZZMpRC8R78ngGMGYq2IIqnOM-OLEHCsHWmvTXHN-hH0bv1252pdhbnwMhwztGsNaYOZFeY7JJKYRM0BjAoeJEcv6V8JOX6vl5ofoF_jeAksaN6kz34zjJN5cQVoJ4nOR48edWbobvalk0ONIaKpIoWPPIeq2aruloQ11xqA?width=660&height=434&cropmode=none",
    "https://9stoza.sn.files.1drv.com/y4m-aNKD-6f8itwg09cSOzVQ1q7l_zuT5ifzw7woDV7iTtFjnlI0sgTwMxGZYAfmsqmiN-Gxz8a61pxKPxk5uUj1braaZv3c8KHAZReel6RH8Nh6_0VG0ur4kUmOHEd3rZUUyU0cyGZ8r6BwMLd1ToxeihJItWDvxppeLcKdFb6GBE8QW75phJQq03M6XGxnpo6zPi5Jc1pXSwUKy-cIPQ3rA?width=552&height=533&cropmode=none",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1710143.jpeg?alt=media&token=0495ce59-69d0-4c27-8876-16fd720a3b91",
    "https://jwdetw.sn.files.1drv.com/y4mEcUvIr5VDcVhesK-v9v8Mg4Sd5iK-7OqIV25K3DsiX4Mj5RR8hZbWFgN-7UZJBK1opdSlLxufAu7_UU3IRQaLcmjK25rZI2MPeOejuV1ienyzX6Wg0BSZPu2gzi35lrUb0kznJ8VCmH2OF3tZ0rwFhQ-X1oKpeSU2fSOE0_f5p0KHhI35cXSuLjCG9bqpsKx9MgQJzZCvBZuJBW5jSNMfw?width=660&height=440&cropmode=none",
    "https://9ss5kg.sn.files.1drv.com/y4m8iSdcggrUh1oid444cCt8G-0TAOWn_FoQ6xtqafRRNQzXs7bKnXAbaGZysqlOSyLJRUhswbxFQFPbIxnuTVXW7iJXHgxIJIBKuWxK6dBm-wYDxNzZFvnZbltydhlt32ogjij7Yul2vvLCTw4fBvHCZKYAuwhinNumMiNHzwDLfsULbnOsde4D4eGPkLVSgaAzvCjrtGJQfTew9RZBgjA0w?width=577&height=660&cropmode=none",
    "https://ytl7oa.sn.files.1drv.com/y4mXNqulb7Ec6AWb09IU7UoR1Ooburs3oTpxcxXQSDA-2JTcNHTfG5VV-J96QgpcSEz3Dm2Hws6wkZ-dWACZCtCUVwTTrKl5IMUe7QKENG8xKE6-Rdt32jdleyylx4an3Z8qe-D9ErrWfjenfLo4sSW4cUNmyo8p-DNBmQSg5RUZO1GAVZMnJZFNDCmaV6qamcqql7WunUyDY0HhR2Z0veqmw?width=250&height=250&cropmode=none",
    "https://jwfkiq.sn.files.1drv.com/y4m60b91xYyXDRrGh9KysEHRIpRuuY1cc-05vt7tawYi6zs0pEfHPBTikkCUwLJH2AyN-cH5Sh0D9Kyg6DmOTw2OOMqtrdT2K4rMeoL_hT095rrw7WpdWtt4Slz0A_WF_fJThTO4m5z5MBGmKXQs9yupoBBb_14pXK6xFSaFkIBRPN4U5c0xdUVpyfMEgA8GGjSr7N0c-frcJiB2ZG28bII9g?width=497&height=508&cropmode=none",
    "https://9ssdqq.sn.files.1drv.com/y4mQGQtl9A9YzdayavgFImlA8ZjIqAHee2xdl1eGImE_NyjbrE9Yl_Z7QivubELJYi0oFxKO1UuB9GxtzlgN21TVqvX6DEIf5WJ0eEvy4F4uE2Gxjwsu8jh-E4ttGopwlprSHB5Al3aLyTbUv_2fyfkLh_L_KWVWqBjMiEAIRyBZ20heeVhkG0tRMT3CpaMxp8Hr47mLCn7e8zAxxJkt4T7XA?width=537&height=511&cropmode=none"
  ];
  List<String> occ = ["Flutter Developer","Backend Developer","Web Developer","Designer","Python Developer","Python Developer","Web Developer","Web Developer","Web Developer","Flutter Developer","Web Developer","Web Developer","Flutter Developer","Web Developer","Web Developer"];
  List<String> abt = [
   "A dedicated and hardworking team player",
   "Hi this is Amritansh, I am a simple guy and a true believer of hard work, I try to complete my work with full determination,focus and give my support to my team members and anyone in need. I am an Android developer and currently doing backend developement with laravel.",
   "I am Ishika Garg and a proud coordinator of Team Conatus in the lush, rolling grounds of AKGEC (Computer Science). I am 21 years old and also plays active part at SPEED in Centre Of Relevance and Excellence (CORE). \nI am a hardcore knowledge enthusiast and own a good taste in music, art, TV series and people.\nAnytime is a good time to contact me:\nigarg145@gmail.com",
   "Hi, Naimish here. My life majorly revolves around internet. I majorly work on projects related to mobile and web development. Learning and exploring new technologies is something which I never miss in my free time.",
   "I am modest, but hard working and I consistently sets firm goals for myself.  Then, once I’ve defined the benchmarks, I take the necessary steps to achieve those milestones. Being a creative graphic designer, I would say that I am prolific.",
   "To code and cook being my forte, I believe in making mistake that gets better with time and eventually teaching myself. Also I have a penchant in web development, with little hand of experience in management domain.",
   "Passionate wanna be a leader. I'm best at what I do. A dedicated and hard working person who believes in finishing the work effectively as well as efficiently.",
   "A team player and tries to lead by example.",
   "I’m a methodical person and like to keep a positive attitude. I can keep my cool under pressure. Being a Graphic Designer, I love turning great ideas into reality.",
   "Integrity and authenticity are important to me. I do what I can, to continue to improve and be the best I can, be at whatever I do. I am someone who has an eye for details because details matter the most.",
   "An efficient being with good communication skills,managerial ability and positive aura who is confident both in life and at work.",
   "I am modest but hard working and strongly motivated to grow professionally. I consistently set my goals and once I defined the benchmarks, I take needful steps to achieve the milestone."

   ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width* 0.86 ,height:MediaQuery.of(context).size.height ,
    decoration: BoxDecoration(
      image:DecorationImage(image: ExactAssetImage("assets/bg.jpg"),fit:BoxFit.cover,
      )
    ),
      child: Stack(
        children: <Widget>[
          Align(alignment: Alignment(-1,-1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "Untitled",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),
    Align(alignment: Alignment(-1,1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "bottom",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),  
    
          Align(alignment: Alignment(0.95, -0.95),child: Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.140,right:20),child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text("3rd YEAR",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.027,color:primal),),
                  SizedBox(height:1),
                  Text("COORDINATORS",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.027,color:Colors.white),),
                  Text(".  .  .  .  .  .  .  .  .  .  .  .",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.029,color:Colors.white),), 
                  SizedBox(height: 20,),
              Container(
                child: Center(
                    child: CarouselSlider(
                    height: MediaQuery.of(context).size.height*0.414+12,
                    autoPlay: true,viewportFraction: 0.7,
                    autoPlayInterval: Duration(milliseconds: 5000),enlargeCenterPage: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 200),
  
  items: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return FacCard2(
                        name: name[i],
                        url: url[i],
                        post: occ[i],
                        );
                    },
                  );
  }).toList(),
),
                    
                        ),
              ),
              
            ],
          ),),),
          
         
             
     
          
        ],
      ),
    );
  }
}


class SecondCoor extends StatelessWidget {
  List<String> name = [
    "Anand Srivastava","Anushka Mishra","Ashutosh Shukla","Avani Mittal","Harsh Gupta","Madhur Saxena","Naveen Sharma","Nikhil","Piyush Shukla","Rishabh Singh","Riya Varyani","Sagar Adval","Sakshi Yadav","Simran Chadhha","Shourya Dev Attrey","Utkarsh Chakravarty"
  ];
  List<String> url = [
    "https://17njpa.ch.files.1drv.com/y4mSuoRkJv7kw0OJtFBdXyj33wqPFSxmc1Q41zwkjieY68FNjsrdB0Ihz6EUtdInmqDw-2xBKoZPOCs0TBCZ0nb1rjlAwZIORvLnvba7KGLCLoIoKYjRb_KgGp-Z5Lzz4I40GXVu81QSuVOh0SXfV6V2r4ivveBGABw-IVQz8w_I-enrGfUPGfPzDv0vm2sOo9wYnMGEGq7G0YmGpCpTm_Wog?width=960&height=960&cropmode=none",
    "https://ci4tmw.ch.files.1drv.com/y4mO7LRYbwOUPrUqTu4yjljU2m4OhLtQ8U4aKP0IHYXL3GNn7yD2u6fS3Y4oHP1ucuwOC9A13EUAXoOkZd4TJT8YlrGCEMY-a5SWlmle_Hew4r0Nn8oSeLPJqgUhNxe5bW7Fkg4anSxcOiFrzadg28VSFrN8RLwme68n-FJ6wgZxDIVIm2WFs4aAPOOuF5IBSjH_ddcTa5_MgxpF0zfcXGgvQ?width=768&height=818&cropmode=none",
    "https://17lpdw.ch.files.1drv.com/y4mdr-6tgb5h8lPlJ-tVX1-XW6kxEBBBV4N9cOQG8QJ0qGkqWxYP1H1ruNYUNxUzSlYs6dHHsI7CzeJU3qOC5MiSaqFvTp07NKwrVWTBtzCDgGqK8KGNyA7juRS_b0vOBKh617pmbNKTBC7pBIU4tMnQSVQQLUhBdMkKRDU4fcUN8i8srxcUsDGgmsz3Rcc-0HDE1OiEeinpwVpoA3BJQ1_cw?width=720&height=720&cropmode=none",
    "https://17lpsq.ch.files.1drv.com/y4moYqaMzdUHDCZxyqufO3i9t0A47ModtlcbSlS3MguqyOLVdLF6pf9DUu5sw8O_tmqv_79tFKdw3RyabDDHtQjMIvPCB9_6_HEc4LLTSxRKnyTOrQt0cqh8jfK4juqpr5p2-VcAWNcukPKQutEJDO6GXrLd8eTk81hRC4DrSvINSUbUifjx_i4sBVFS5u4mSUrgJC5lFmRVFvdddmnZDrQig?width=740&height=740&cropmode=none",
    "https://17kzjg.ch.files.1drv.com/y4mFrDMqqTEOjMzvhjVzba6klJEXEgxgmJLuwrIPxZebcOIy1LdT9O9NlSbCtdQt9AX2Dit2YFm9fnlSlS8HwZ88NCFDh06v_xetACkTRPUZXFWvM9mO_tERFCLCyQ2e2boiqNPJKPMDs9txW_r1hRwhvLgYuumoSW5VC-HVWHE5hASX7gqdI5sAiQBi2RqBpnddz8YFk9lSZuDslo3uR4QUg?width=336&height=336&cropmode=none",
    "https://17mmda.ch.files.1drv.com/y4marR6Yix-8wiVoWkDMSiNNgr4fHoJumD2vTnajzBqpDhpTg6ekGD7-j_IK5u83IfPPZdD368Qg1vpxF-EHKQF7fAXzJRu6uiFWR4fHU8Z2rOX4u0KpVa05X3AjjasJqOllH_ooQDVcYxiewmQekhd3ysSqDo25TwWauyHqE0ZIC_OGMKOn7Yvd7f2RIGGPhxVBdTNxiWS8fxCJYKDgkVqNQ?width=864&height=1152&cropmode=none",
    "https://17m0mg.ch.files.1drv.com/y4mHQCNl8SKlDKhK3Mz9rkYNWyMpzHp-QSvzEjopCA8OIUjyrQa7r_-mk-s6BzNNFyAOoXfo1bp15wEFfdqF8CVBRUzpSFYPuRK0uPORbB7dBUYzshXV7_Wg3Y1YK_rckB39wqjzATXrGIRawXlP8_C873-hu_H1Liae4V40NboYgeYe4REGBMs277hzGk8XwOiq3xfLnpZhj8GjbuEbUynQw?width=1080&height=1080&cropmode=none",
    "https://0hi5ha.ch.files.1drv.com/y4m-ZvR6lCoFQ2lsDxVHAO07FCHS-_e0nlSsXTT-vG6yBVCIdm8uCMakfwjX4cvOfvihnRxuVLOpzO6x9R04Kpuydc01CYbtz6Ww00M6X830lPH1cGGe3AJTlAUTObY7jRYEs4DJTy4e6WIlPHXCU3DNi1QMuPJC4K1v7wQ4Wt9y8P1RS9t62KXAT-gxa5lYD1kuj-20wgYZRqstOh9shDR8A?width=720&height=720&cropmode=none",
    "https://17mfpa.ch.files.1drv.com/y4mAupyoa6d1ew8_IVdJ-d2-OUV4BSl9e9GmWqxoZVe5oQRKjiLBaXureAvSVnRUbRxQAaGwnizsSSsAavmLtaXFKUo43aQs0ahO_SLDbUTOAyqnLYE5tobq-xspVnsKFhSGxFzYj13th1vOUzDZC-HTNXZVRgMzxwUWgZ6H3Wx4_rj97OMDPhhHM0km6eihfFm9Cg_ohJS5QCT5btg3U3kxg?width=1312&height=1644&cropmode=none",
    "https://ci6zog.ch.files.1drv.com/y4mnQDy29zz7A1Q4KFfyugMU1ec9-ZPg2ppMEWyxjyFtHfod5WfyiYpAKPBpeH3kss4tHMiXJsRmwguPI3QuxRx95bwXIOPaEHeQPEbLTAfSGC4VyWwjLCteZE97If_RIfUF-xklhsQGGG2iB4gt5NWjHvN1Nhu7XqfYjUW6H42eNe7vc3DLBj6XFq6hol5HIv1H3mHuZqESKpsM6Mb7T6XAg?width=864&height=1152&cropmode=none",
    "https://ytlftw.sn.files.1drv.com/y4mPcplhGTlICRTIr5v8xRd3GLijAxHd2v0-eieaQAo-PqMU2F6ILwmPZYZUh4R9ng7J45wi5B6l5dBpCJqDCr_nV_XHlvJ1aICxbpzyyNLt6Nh7IpzoI_0zgBmDk743am52qnt0Jda9oyHWz1Z6U_ETIjbstRAUe7u1QmmCp32OV7WLRDM7iX_BhsZXTzYAVwGIgCns6V3loXjast4XcdL5A?width=256&height=235&cropmode=none",
    "https://17klma.ch.files.1drv.com/y4mkFE3i8N0R8AD6_QgbH_IICh0NL9ftUQpAOeikcMabWJnJAI5JxJskr5dR_MuMgRMfQMO95KjOQFNju4wYyj0bxtLZaYlutaAx16IQ4A_WARlBhamhcbArkJ3idMa_pIWslYFO8gi9ND1jr8FDoXwCiWlENj9zcJve23CyOi3tG9T-dlyuGLGKo1MT3D9MC6lCcwTm0bW-IWsycT-1-MH1g?width=485&height=700&cropmode=none",
    "https://17kgbq.ch.files.1drv.com/y4mIMDTj77zLxivuGC_GOVT9_9uNa4V_2UhQY_57UWaR4b6NDF_-oOTw8Lm05kunIKcOoJnIpwShpwzLYIqWlUC0Ap06ChUsBCjcXaGNq6ZwI9jbkby3XQyKgoIu3mOGfENc5p1_qyHJeqCu12QG-fsbScjcUuArfvxFWRp5mGrvx02abatbun0hUbuvqplcXdqACLQBsqZcG72QvqyyxlsjA?width=907&height=1024&cropmode=none",
    "https://ci5orw.ch.files.1drv.com/y4mwdlKzYzAizAt2k1hGO8H8RMRNcBDKnsAWusKh8uOqNeHOG4aWFCniV5znQ49DvRCi8ZbTp--H0t5Z_mn-tAXpVmC8Y8MMklZmTlt7FN4cIwOBxzqfAGcLe4VdD2gvvLBzRejeWeZtq4cFMtQhvWLC4CRFtBBNMeaizY-nXQfhfaAzFU5EOVx7XO3GZcLatVauOAm1vo5zEo2Lf8sXTglMA?width=882&height=790&cropmode=none",
    "https://17nqgw.ch.files.1drv.com/y4m_My5YLOJFl6E5fsnsFqi4dUNKlLOE9vpKnOQzOlYPX39liAkE-EEhVdqdQeqpNvQ3D9YYw-uVsDjXNmH0DKcOX4sTrVlLJL58jVtyOA4dI8FNRoX0uK29sxXuEGAW-XpLM8LsPXOLf09NLxDQlhoq7FL0wxtrgzNi_8oU9lKY--45dJe7vTkob-MEwn-UNX_i3meR74LYwUGeUvF8JYxMg?width=1080&height=2147&cropmode=none",
    "https://ytngkw.sn.files.1drv.com/y4mQSCT98P9xycI3llhxakh_yz6QCmVeaOUkm8axR45KGg9MULELaeIPQVyKm16yBqCtQbXN9lAm8M63MRrN-XxsNUPGbh4tCTDbET2L3bhAnyMoPB2kvYBNKgNs7o1d7DrA4RplDpInvo8-OrJ72B6WdIYV8_l40B5XeiDo2dx3VhDQy61LZUhnkZTN3ym5moTba25eKaz-0QtnDIAwnLpYA?width=256&height=254&cropmode=none"
  ];
  List<String> occ = ["Flutter Developer","Python Developer","Flutter Developer","Flutter Developer","Flutter Developer","Python Developer","Machine Learning","Backend Developer","Flutter Developer","Machine Learning","Web Developer","Backend Developer","Flutter Developer","Python Developer","Flutter Developer","Web Developer"];
  List<String> abt = [
   "A dedicated and hardworking team player",
   "Hi this is Amritansh, I am a simple guy and a true believer of hard work, I try to complete my work with full determination,focus and give my support to my team members and anyone in need. I am an Android developer and currently doing backend developement with laravel.",
   "I am Ishika Garg and a proud coordinator of Team Conatus in the lush, rolling grounds of AKGEC (Computer Science). I am 21 years old and also plays active part at SPEED in Centre Of Relevance and Excellence (CORE). \nI am a hardcore knowledge enthusiast and own a good taste in music, art, TV series and people.\nAnytime is a good time to contact me:\nigarg145@gmail.com",
   "Hi, Naimish here. My life majorly revolves around internet. I majorly work on projects related to mobile and web development. Learning and exploring new technologies is something which I never miss in my free time.",
   "I am modest, but hard working and I consistently sets firm goals for myself.  Then, once I’ve defined the benchmarks, I take the necessary steps to achieve those milestones. Being a creative graphic designer, I would say that I am prolific.",
   "To code and cook being my forte, I believe in making mistake that gets better with time and eventually teaching myself. Also I have a penchant in web development, with little hand of experience in management domain.",
   "Passionate wanna be a leader. I'm best at what I do. A dedicated and hard working person who believes in finishing the work effectively as well as efficiently.",
   "A team player and tries to lead by example.",
   "I’m a methodical person and like to keep a positive attitude. I can keep my cool under pressure. Being a Graphic Designer, I love turning great ideas into reality.",
   "Integrity and authenticity are important to me. I do what I can, to continue to improve and be the best I can, be at whatever I do. I am someone who has an eye for details because details matter the most.",
   "An efficient being with good communication skills,managerial ability and positive aura who is confident both in life and at work.",
   "I am modest but hard working and strongly motivated to grow professionally. I consistently set my goals and once I defined the benchmarks, I take needful steps to achieve the milestone."

   ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width* 0.86 ,height:MediaQuery.of(context).size.height ,
    decoration: BoxDecoration(
      image:DecorationImage(image: ExactAssetImage("assets/bg.jpg"),fit:BoxFit.cover,
      )
    ),
      child: Stack(
        children: <Widget>[
           Align(alignment: Alignment(-1,-1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "Untitled",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),
    Align(alignment: Alignment(1,1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "noswipe",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),  
    
          Align(alignment: Alignment(0.95, -0.95),child: Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.140,right:20),child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
            Text("2nd YEAR",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.027,color:primal),),
                  SizedBox(height:1),
                  Text("COORDINATORS",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.027,color:Colors.white),),
                  Text(".  .  .  .  .  .  .  .  .  .  .  .",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.029,color:Colors.white),), 
                  SizedBox(height: 20,),
               Container(
                child: Center(
                    child: CarouselSlider(
                   height: MediaQuery.of(context).size.height*0.414+12,
                    autoPlay: true,viewportFraction: 0.7,
                    autoPlayInterval: Duration(milliseconds: 5000),enlargeCenterPage: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 200),
  
  items: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return FacCard2(
                        name: name[i],
                        url: url[i],
                        post: occ[i],
                        );
                    },
                  );
  }).toList(),
),
                    
                        ),
              ),
              
            ],
          ),),),
         
        
             
     
          
        ],
      ),
    );
  }
}



class FourthCoor extends StatelessWidget {
  List<String> name = [
    "Aditya Pandey","Amritansh Kr. Yadav","Ishika Garg","Naimish Verma","Prakhar Agarwal","Preet Dewan","Rachit Sharma","Ravi Goswami","Rishabh Bajpai","Shaily Gupta","Shubhi Rajput","Utkarsh Varshney"
  ];
  List<String> url = [
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1610057.jpeg?alt=media&token=1d51286a-4bf5-41bc-836f-6bfde96d6bd0",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1610012.jpeg?alt=media&token=8319ef65-37b8-470e-b41d-d5d3003009ee",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1610164%20(1).jpeg?alt=media&token=c0e3c4a9-a49c-48ef-8c7f-de72ff41c396",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1613008.jpeg?alt=media&token=ecd36084-c676-4d30-827c-eca683d6e45a",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1610128.jpeg?alt=media&token=24266831-7e01-4323-8b55-92b49e51a7ab",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1610118.jpeg?alt=media&token=b329adcf-35f3-471b-a976-4359035ce8fc",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1613033.jpeg?alt=media&token=3fc99e30-34f4-4ecf-8e42-9b48a6265ed3",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1613022.jpg?alt=media&token=bef1653c-3bab-49bb-830a-8fadc706d551",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1610106.jpg?alt=media&token=8f29aac1-f62a-4119-b067-a5361b571571",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1610174.jpg?alt=media&token=8761debb-dec6-49f8-9d9a-41234908c93b",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1613112.jpg?alt=media&token=a5f652da-2107-4f3c-b2ca-a1fbe181ab9a",
    "https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1613116.jpeg?alt=media&token=3fba4b8d-5f2b-47a7-824d-4cac87e50bdb"
  ];
  List<String> occ = ["Web Developer","Backend Developer","Python Developer","Web Developer","Graphic Designer","Android Developer","Backend Developer","Android Developer","Graphic Designer","Android Developer","Web Developer","Web Developer"];
  List<String> abt = [
   "A dedicated and hardworking team player",
   "Hi this is Amritansh, I am a simple guy and a true believer of hard work, I try to complete my work with full determination,focus and give my support to my team members and anyone in need. I am an Android developer and currently doing backend developement with laravel.",
   "I am Ishika Garg and a proud coordinator of Team Conatus in the lush, rolling grounds of AKGEC (Computer Science). I am 21 years old and also plays active part at SPEED in Centre Of Relevance and Excellence (CORE). \nI am a hardcore knowledge enthusiast and own a good taste in music, art, TV series and people.\nAnytime is a good time to contact me:\nigarg145@gmail.com",
   "Hi, Naimish here. My life majorly revolves around internet. I majorly work on projects related to mobile and web development. Learning and exploring new technologies is something which I never miss in my free time.",
   "I am modest, but hard working and I consistently sets firm goals for myself.  Then, once I’ve defined the benchmarks, I take the necessary steps to achieve those milestones. Being a creative graphic designer, I would say that I am prolific.",
   "To code and cook being my forte, I believe in making mistake that gets better with time and eventually teaching myself. Also I have a penchant in web development, with little hand of experience in management domain.",
   "Passionate wanna be a leader. I'm best at what I do. A dedicated and hard working person who believes in finishing the work effectively as well as efficiently.",
   "A team player and tries to lead by example.",
   "I’m a methodical person and like to keep a positive attitude. I can keep my cool under pressure. Being a Graphic Designer, I love turning great ideas into reality.",
   "Integrity and authenticity are important to me. I do what I can, to continue to improve and be the best I can, be at whatever I do. I am someone who has an eye for details because details matter the most.",
   "An efficient being with good communication skills,managerial ability and positive aura who is confident both in life and at work.",
   "I am modest but hard working and strongly motivated to grow professionally. I consistently set my goals and once I defined the benchmarks, I take needful steps to achieve the milestone."

   ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width* 0.86 ,height:MediaQuery.of(context).size.height ,
    decoration: BoxDecoration(
      image:DecorationImage(image: ExactAssetImage("assets/bg.jpg"),fit:BoxFit.cover,
      )
    ),
      child: Stack(
        children: <Widget>[
          Align(alignment: Alignment(-1,-1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "Untitled",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),
    Align(alignment: Alignment(-1,1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "bottom",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),  
    
          Align(alignment: Alignment(0.95, -0.95),child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.140,right:20),child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text("4th YEAR",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.027,color:primal),),
                  SizedBox(height:1),
                  Text("COORDINATORS",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.027,color:Colors.white),),
                  Text(".  .  .  .  .  .  .  .  .  .  .  .",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.029,color:Colors.white),), 
                  SizedBox(height: 20,),
              Container(
                child: Center(
                    child: CarouselSlider(
                    height: MediaQuery.of(context).size.height*0.414+12,
                    autoPlay: true,viewportFraction: 0.7,
                    autoPlayInterval: Duration(milliseconds: 5000),enlargeCenterPage: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 200),
  
  items: [0,1,2,3,4,5,6,7,8,9,10,11].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return FacCard2(
                        name: name[i],
                        url: url[i],
                        post: occ[i],
                        );
                    },
                  );
  }).toList(),
),
                    
                        ),
              ),
                ],
              ),),
              
            ],
          ),),
          
//          Container(
//                 child: Center(
//                     child: CarouselSlider(
//                     height: 400,
//                     autoPlay: true,viewportFraction: 0.7,
//                     autoPlayInterval: Duration(milliseconds: 5000),enlargeCenterPage: true,
//                     autoPlayAnimationDuration: Duration(milliseconds: 200),
  
//   items: [0,1,2,3,4,5,6,7,8,9,10].map((i) {
//                   return Builder(
//                     builder: (BuildContext context) {
//                       return FacCard2(
//                         name: name[i],
//                         url: url[i],
//                         post: occ[i],
//                         );
//                     },
//                   );
//   }).toList(),
// ),
                    
//                         ),
//               ),
             
     
          
        ],
      ),
    );
  }
}



class FacCoor extends StatelessWidget {
  List<String> fac_name = [
    "Dr. Sunita Yadav",
    "Dr. Anu Chaudhary",
    "Mr. Rohit Vashisht"
  ];
  List<String> fac_url = [
    "https://firebasestorage.googleapis.com/v0/b/conatusapp-4df41.appspot.com/o/sunita-mam.jpg?alt=media&token=72a89d52-1c84-4b35-a710-313d06a4f12d",
    "https://firebasestorage.googleapis.com/v0/b/conatusapp-4df41.appspot.com/o/anu-sir.jpeg?alt=media&token=4dc9980a-c32d-46de-92b1-e76d0c0a8aa4",
    "https://firebasestorage.googleapis.com/v0/b/conatusapp-4df41.appspot.com/o/rohit-sir.jpeg?alt=media&token=4116fb73-9bdd-4304-91b3-b64aefe73b0f"
  ];
  List<String> fac_post = ["H.O.D", "H.O.D", "Faculty Coordinator"];
  List<String> fac_dept = [
    "Computer Science Engineering",
    "Information Technology",
    "Computer Science Engineering"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width* 0.86 ,height:MediaQuery.of(context).size.height ,
    decoration: BoxDecoration(
      image:DecorationImage(image: ExactAssetImage("assets/bg.jpg"),fit:BoxFit.cover,
      )
    ),
      child: Stack(
        children: <Widget>[
          Align(alignment: Alignment(-0.95, -0.95),child: Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.12,left:20),child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("FACULTY",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.028,color:primal),),
              SizedBox(height:1),
              Text("COORDINATORS",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.028,color:Colors.white),),
              Text(".  .  .  .  .  .  .  .  .  .  .  .",style: GoogleFonts.paytoneOne(fontSize: MediaQuery.of(context).size.height*0.03,color:Colors.white),),
              
              
            ],
          ),),),
          Align(alignment: Alignment(1,-1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "top",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),
      Align(alignment: Alignment(-1,1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "bottom",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),
          Container(
            child: Center(
                child: CarouselSlider(
               height: MediaQuery.of(context).size.height*0.42+12,
                autoPlay: true,viewportFraction: 0.7,
                autoPlayInterval: Duration(milliseconds: 3000),enlargeCenterPage: true,
                autoPlayAnimationDuration: Duration(milliseconds: 200),
  
  items: [0,1,2].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return FacCard(
                    name: fac_name[i],
                    url: fac_url[i],
                    post: fac_post[i],
                    dept: fac_dept[i]);
                },
              );
  }).toList(),
),
                
                    ),
          ),
        ],
      ),
    );
  }
}

class FacCard extends StatelessWidget {
  String name, url, dept, post;
  FacCard({
    @required this.name,
    @required this.url,
    @required this.post,
    @required this.dept,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height*0.314+6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff090909),
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000),
                blurRadius: 4.0,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Color(0x1fffffff),
                blurRadius: 4.0,
                offset: Offset(-4, -4),
              ),
            ]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height*0.24,
                  width: MediaQuery.of(context).size.height*0.24,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [Colors.white, primal])),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.23,
                      width: MediaQuery.of(context).size.height*0.23,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: grey),
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.22,
                          width: MediaQuery.of(context).size.height*0.22,
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl:
                                url,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Icon(
                              Icons.error,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(name,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.height*0.02,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(post,style: TextStyle(color: primal,fontSize: MediaQuery.of(context).size.height*0.018),),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(dept,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.height*0.016),),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class FacCard2 extends StatelessWidget {
  String name, url, dept, post;
  FacCard2({
    @required this.name,
    @required this.url,
    @required this.post,
    @required this.dept,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height*0.314+6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff090909),
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000),
                blurRadius: 4.0,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Color(0x1fffffff),
                blurRadius: 4.0,
                offset: Offset(-4, -4),
              ),
            ]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment:CrossAxisAlignment.center,children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.height*0.25,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [Colors.white, primal])),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.24,
                    width: MediaQuery.of(context).size.height*0.24,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: grey),
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.23,
                    width: MediaQuery.of(context).size.height*0.23,
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl:
                                url,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Icon(
                              Icons.error,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(name,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.height*0.023,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(post,style: TextStyle(color: primal,fontSize: MediaQuery.of(context).size.height*0.02,),textAlign: TextAlign.center,),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}





