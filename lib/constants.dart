import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

const kURLDeveloper = 'https://kartikeybhardwaj.me';
const kEmailDeveloper = 'kartikey.bh21@gmail.com';

const kURLPrivacyPolicy = 'https://github.com/lu-dsc/site-ludsc/wiki/Privacy-Policy';

const kEmail = 'mailto:gdsc.lakeheadu@gmail.com?subject=Hello%20Lakehead%20DSC';
const kDiscord = 'https://discord.gg/NzdqCtzJ5j';
const kGithub = 'https://github.com/lu-dsc';
const kfacebook = 'https://www.facebook.com/gdsc.lakeheadu';
const kInstagram = 'https://instagram.com/gdsc_lu';
const kLinkedIn = 'https://www.linkedin.com/company/google-developer-student-club-lakehead-university';
const kTwitter = 'https://twitter.com/Gdsc_Lakeheadu';

const kCommunity = 'https://gdsc.community.dev/lakehead-university/';
const kJoinUs = 'https://gdsc.community.dev/accounts/login/?next=/lakehead-university/';

// Colors
const kColorLionHeart = Color(0xFFB6312D);
const kColorMikadoYellow = Color(0xFFF6C345);
const kColorMermaidBlues = Color(0xFF194176);

// Icon colors
Color kIconLightColor = Colors.grey.shade700;
Color kIconDarkColor = Colors.grey.shade300;
Color kCardBackgroundLightColor = Colors.grey.shade100;
Color kCardBackgroundDarkColor = Colors.grey.shade900;

const kDisabledColor = Color(0xFF999999);

const double kDefaultPadding = 8.0;

bool kInitSettingsLightTheme = SchedulerBinding.instance.window.platformBrightness == Brightness.light;
