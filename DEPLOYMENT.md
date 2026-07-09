# 🚀 دليل النشر على Vercel

## الخيار الأول: النشر السريع (الموصى به)

### 1️⃣ زيارة Vercel
انتقل إلى: **https://vercel.com**

### 2️⃣ تسجيل الدخول أو إنشاء حساب
- اضغط **Sign Up** أو **Log In**
- استخدم GitHub لتسجيل الدخول (الأسهل)

### 3️⃣ ربط مشروعك
1. اضغط **New Project**
2. اختر **Import Git Repository**
3. ابحث عن `hmood415/-`
4. اختر الفرع: `claude/project-inquiry-plcm31`

### 4️⃣ إعدادات النشر
- **Framework Preset:** Other
- **Build Command:** (اتركه فارغاً)
- **Output Directory:** `.`
- **Environment Variables:** (لا تحتاج)

### 5️⃣ اضغط Deploy
انتظر حتى ينتهي النشر (عادة 1-2 دقيقة)

### 6️⃣ احصل على الرابط
بعد النشر، ستحصل على رابط مثل:
```
https://your-project.vercel.app
```

---

## الخيار الثاني: النشر عبر CLI (متقدم)

### 1️⃣ تسجيل الدخول
```bash
vercel login
```

### 2️⃣ انتقل للمشروع
```bash
cd /path/to/project
```

### 3️⃣ انشر المشروع
```bash
vercel
```

### 4️⃣ اتبع التعليمات
- أجب على الأسئلة
- اضغط Enter للإعدادات الافتراضية
- انتظر النشر

### 5️⃣ احصل على الرابط
```
✓ Production: https://your-project.vercel.app
```

---

## الخيار الثالث: النشر التلقائي

### 1️⃣ في Vercel Dashboard
1. اذهب إلى **Settings**
2. اختر **Git**
3. فعّل **Automatic Deployments**

### النتيجة:
- كل push إلى الفرع سينشر تلقائياً
- سترى حالة النشر في GitHub

---

## ✅ بعد النشر

### اختبر المشروع
افتح الرابط في المتصفح:
```
https://your-project.vercel.app
```

### تحقق من الوظائف
- ✅ جرب تحميل الصفحات
- ✅ اختبر الحجز
- ✅ تحقق من الـ validation
- ✅ تأكد من الـ loading states

### مشاكل شائعة وحلولها

#### المشكلة: 404 Not Found
**الحل:** تأكد من ملف `vercel.json`
```json
{
  "rewrites": [{ "source": "/(.*)", "destination": "/index.html" }]
}
```

#### المشكلة: الصور لا تحميل
**الحل:** جميع الأيقونات SVG مضمنة في HTML

#### المشكلة: Supabase لا يعمل
**الحل:** أضف متغيرات البيئة في Vercel Settings

---

## 🔧 إعدادات متقدمة

### إضافة متغيرات البيئة
إذا استخدمت Supabase:

1. في Vercel Dashboard
2. اذهب إلى **Settings → Environment Variables**
3. أضف:
   ```
   SUPABASE_URL=your-url
   SUPABASE_ANON=your-key
   ```

### Custom Domain
1. في Vercel Settings
2. اختر **Domains**
3. أضف نطاقك المخصص

### سياسة الأمان (CSP)
إضافة headers أمان في `vercel.json`:
```json
{
  "headers": [
    {
      "source": "/(.*)",
      "headers": [
        {
          "key": "X-Content-Type-Options",
          "value": "nosniff"
        }
      ]
    }
  ]
}
```

---

## 📊 مراقبة الأداء

### في Vercel Analytics
- عدد الزيارات
- أوقات التحميل
- الأخطاء

### تحسينات مقترحة
- استخدام CDN للصور
- تقليل حجم الـ bundle
- استخدام Service Workers

---

## 🔄 التحديث المستقبلي

### لتحديث المشروع:
1. اعمل تغييرات محلية
2. git add و git commit
3. git push إلى `claude/project-inquiry-plcm31`
4. Vercel سينشر تلقائياً! 🚀

---

## 📞 الدعم

إذا واجهت مشاكل:
- تحقق من **Deployments** في Vercel Dashboard
- اقرأ **Logs** للأخطاء
- راجع [Vercel Docs](https://vercel.com/docs)

---

**آخر تحديث:** 2026-07-09
