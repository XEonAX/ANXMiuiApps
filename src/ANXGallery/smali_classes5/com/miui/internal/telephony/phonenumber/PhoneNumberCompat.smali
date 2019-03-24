.class public Lcom/miui/internal/telephony/phonenumber/PhoneNumberCompat;
.super Ljava/lang/Object;
.source "PhoneNumberCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p0, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;,
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    return-object v0
.end method
