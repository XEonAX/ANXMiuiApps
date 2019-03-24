.class public Lmiui/hybrid/feature/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# static fields
.field private static final ACTION_LOOKUP:Ljava/lang/String; = "lookup"

.field private static final ACTION_PICK_PHONE_NUMBER:Ljava/lang/String; = "pickPhoneNumber"

.field private static final KEY_CONTACT_LIST:Ljava/lang/String; = "contactList"

.field private static final KEY_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field private static final KEY_PHONE_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_PHONE_TYPE:Ljava/lang/String; = "type"

.field private static final PACKAGE_NAME_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final REQUEST_CODE_PICK:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 73
    const-string v0, "display_name"

    const-string v1, "data4"

    const-string v2, "data2"

    const-string v3, "data3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/hybrid/feature/Contact;->PROJECTION_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-static {p0, p1}, Lmiui/hybrid/feature/Contact;->getContactsByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 60
    invoke-static {p0, p1}, Lmiui/hybrid/feature/Contact;->getContactPhoneNumber(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static getContactPhoneNumber(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 226
    sget-object v2, Lmiui/hybrid/feature/Contact;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 228
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 229
    .local v1, "result":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 231
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const-string v2, "displayName"

    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v2, "number"

    const-string v3, "data4"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v2, "label"

    const-string v3, "data3"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    if-eqz v0, :cond_2

    .line 245
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 244
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v2    # "e":Lorg/json/JSONException;
    if-eqz v0, :cond_2

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    .line 245
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    .line 250
    :cond_2
    :goto_2
    return-object v1
.end method

.method private static getContactsByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 126
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 128
    .local v0, "contactList":Lorg/json/JSONArray;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 129
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 130
    .local v1, "uri":Landroid/net/Uri;
    sget-object v4, Lmiui/hybrid/feature/Contact;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 132
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 134
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 136
    .local v3, "contact":Lorg/json/JSONObject;
    const-string v4, "displayName"

    const-string v5, "display_name"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v4, "number"

    const-string v5, "data4"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v4, "type"

    const-string v5, "data2"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v4, "label"

    const-string v5, "data3"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v3    # "contact":Lorg/json/JSONObject;
    goto :goto_0

    .line 149
    :cond_0
    if-eqz v2, :cond_2

    .line 150
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 149
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v3    # "e":Lorg/json/JSONException;
    if-eqz v2, :cond_2

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_1

    .line 150
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3

    .line 155
    :cond_2
    :goto_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v3, "result":Lorg/json/JSONObject;
    :try_start_2
    const-string v4, "contactList"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    goto :goto_4

    .line 159
    :catch_1
    move-exception v4

    .line 160
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 163
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_4
    return-object v3
.end method

.method private lookupContact(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 5
    .param p1, "request"    # Lmiui/hybrid/Request;

    .line 99
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getRawParams()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "param":Lorg/json/JSONObject;
    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/hybrid/feature/Contact;->normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "param":Lorg/json/JSONObject;
    move-object v0, v1

    .line 104
    .local v0, "phoneNumber":Ljava/lang/String;
    nop

    .line 103
    nop

    .line 106
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 108
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lmiui/hybrid/feature/Contact$1;

    invoke-direct {v2, p0, v1, p1}, Lmiui/hybrid/feature/Contact$1;-><init>(Lmiui/hybrid/feature/Contact;Landroid/content/ContentResolver;Lmiui/hybrid/Request;)V

    .line 120
    .local v2, "lookupContactTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Lorg/json/JSONObject;>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    const/4 v3, 0x0

    return-object v3

    .line 101
    .end local v0    # "phoneNumber":Ljava/lang/String;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "lookupContactTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Lorg/json/JSONObject;>;"
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 103
    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0xcc

    const-string v3, "param not valid"

    invoke-direct {v1, v2, v3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private static normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 167
    const-string v0, ""

    .line 168
    .local v0, "normalizedPhoneNumber":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 170
    .local v1, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 173
    .end local v1    # "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_0
    return-object v0
.end method

.method private pickPhoneNumber(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 6
    .param p1, "request"    # Lmiui/hybrid/Request;

    .line 177
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    .line 178
    .local v0, "nativeInterface":Lmiui/hybrid/NativeInterface;
    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 180
    .local v1, "activity":Landroid/app/Activity;
    new-instance v2, Lmiui/hybrid/feature/Contact$2;

    invoke-direct {v2, p0, v0, p1}, Lmiui/hybrid/feature/Contact$2;-><init>(Lmiui/hybrid/feature/Contact;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V

    .line 215
    .local v2, "l":Lmiui/hybrid/LifecycleListener;
    invoke-virtual {v0, v2}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 217
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 222
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 2
    .param p1, "request"    # Lmiui/hybrid/Request;

    .line 255
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lookup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pickPhoneNumber"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 257
    :cond_1
    :goto_0
    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object v0
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 3
    .param p1, "request"    # Lmiui/hybrid/Request;

    .line 86
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pickPhoneNumber"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Contact;->pickPhoneNumber(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lookup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Contact;->lookupContact(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    return-object v0

    .line 92
    :cond_1
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xcc

    const-string v2, "no such action"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
