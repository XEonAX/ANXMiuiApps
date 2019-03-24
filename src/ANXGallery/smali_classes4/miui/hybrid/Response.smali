.class public Lmiui/hybrid/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CODE_ACTION_ERROR:I = 0xcd

.field public static final CODE_ASYNC:I = 0x2

.field public static final CODE_CALLBACK:I = 0x3

.field public static final CODE_CANCEL:I = 0x64

.field public static final CODE_CONFIG_ERROR:I = 0xc9

.field public static final CODE_FEATURE_ERROR:I = 0xcc

.field public static final CODE_GENERIC_ERROR:I = 0xc8

.field public static final CODE_PERMISSION_ERROR:I = 0xcb

.field public static final CODE_SIGNATURE_ERROR:I = 0xca

.field public static final CODE_SUCCESS:I = 0x0

.field public static final CODE_SYNC:I = 0x1

.field private static final yX:Ljava/lang/String; = "code"

.field private static final yY:Ljava/lang/String; = "content"


# instance fields
.field private fB:Lorg/json/JSONObject;

.field private hP:I

.field private yZ:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 86
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/Response;->fB:Lorg/json/JSONObject;

    .line 106
    iput p1, p0, Lmiui/hybrid/Response;->hP:I

    .line 107
    iput-object p2, p0, Lmiui/hybrid/Response;->yZ:Ljava/lang/String;

    .line 109
    :try_start_0
    iget-object p1, p0, Lmiui/hybrid/Response;->fB:Lorg/json/JSONObject;

    const-string v0, "code"

    iget v1, p0, Lmiui/hybrid/Response;->hP:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    iget-object p1, p0, Lmiui/hybrid/Response;->fB:Lorg/json/JSONObject;

    const-string v0, "content"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 114
    :goto_0
    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/Response;->fB:Lorg/json/JSONObject;

    .line 133
    iput p1, p0, Lmiui/hybrid/Response;->hP:I

    .line 134
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/hybrid/Response;->yZ:Ljava/lang/String;

    .line 136
    :try_start_0
    iget-object p1, p0, Lmiui/hybrid/Response;->fB:Lorg/json/JSONObject;

    const-string v0, "code"

    iget v1, p0, Lmiui/hybrid/Response;->hP:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    iget-object p1, p0, Lmiui/hybrid/Response;->fB:Lorg/json/JSONObject;

    const-string v0, "content"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 141
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 149
    iget v0, p0, Lmiui/hybrid/Response;->hP:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lmiui/hybrid/Response;->yZ:Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Lorg/json/JSONObject;
    .locals 1

    .line 167
    iget-object v0, p0, Lmiui/hybrid/Response;->fB:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lmiui/hybrid/Response;->fB:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
