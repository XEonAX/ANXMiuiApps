.class public Lcom/xiaomi/metoknlp/devicediscover/m;
.super Ljava/lang/Object;
.source "DiscoverService.java"


# static fields
.field private static Z:Ljava/lang/String;

.field private static ae:Lcom/xiaomi/metoknlp/devicediscover/m;


# instance fields
.field private aa:Lcom/xiaomi/metoknlp/devicediscover/f;

.field private ab:Lcom/xiaomi/metoknlp/devicediscover/c;

.field private ac:Lcom/xiaomi/metoknlp/devicediscover/g;

.field private ad:Lcom/xiaomi/metoknlp/devicediscover/j;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mLock:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mState:I

    .line 38
    new-instance v0, Lcom/xiaomi/metoknlp/devicediscover/c;

    invoke-direct {v0}, Lcom/xiaomi/metoknlp/devicediscover/c;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 53
    new-instance v0, Lcom/xiaomi/metoknlp/devicediscover/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/metoknlp/devicediscover/a;-><init>(Lcom/xiaomi/metoknlp/devicediscover/m;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mHandler:Landroid/os/Handler;

    .line 266
    return-void
.end method

.method public static O()Lcom/xiaomi/metoknlp/devicediscover/m;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/xiaomi/metoknlp/devicediscover/m;->ae:Lcom/xiaomi/metoknlp/devicediscover/m;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-direct {v0}, Lcom/xiaomi/metoknlp/devicediscover/m;-><init>()V

    sput-object v0, Lcom/xiaomi/metoknlp/devicediscover/m;->ae:Lcom/xiaomi/metoknlp/devicediscover/m;

    .line 50
    :cond_0
    sget-object v0, Lcom/xiaomi/metoknlp/devicediscover/m;->ae:Lcom/xiaomi/metoknlp/devicediscover/m;

    return-object v0
.end method

.method private P()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/metoknlp/devicediscover/l;->a(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 103
    return-void
.end method

.method private R()V
    .locals 5

    .prologue
    .line 137
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/i;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/xiaomi/metoknlp/devicediscover/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/xiaomi/metoknlp/devicediscover/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 140
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/metoknlp/devicediscover/c;->d(Ljava/lang/String;)Lcom/xiaomi/metoknlp/devicediscover/c;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/metoknlp/a/d;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/metoknlp/devicediscover/c;->e(Ljava/lang/String;)Lcom/xiaomi/metoknlp/devicediscover/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/metoknlp/devicediscover/c;->f(Ljava/lang/String;)Lcom/xiaomi/metoknlp/devicediscover/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/devicediscover/c;->i(Ljava/lang/String;)Lcom/xiaomi/metoknlp/devicediscover/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/c;->h(Ljava/lang/String;)Lcom/xiaomi/metoknlp/devicediscover/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ac:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/devicediscover/g;->getStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/metoknlp/devicediscover/c;->a(J)Lcom/xiaomi/metoknlp/devicediscover/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ac:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/devicediscover/g;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/metoknlp/devicediscover/c;->b(J)Lcom/xiaomi/metoknlp/devicediscover/c;

    goto :goto_0
.end method

.method private S()V
    .locals 0

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/devicediscover/m;->Q()V

    .line 179
    return-void
.end method

.method private T()V
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/c;->v()Lcom/xiaomi/metoknlp/devicediscover/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/e;->y()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/xiaomi/metoknlp/MetokApplication;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/MetokApplication;->notifyDataChange(Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method

.method private U()V
    .locals 4

    .prologue
    .line 208
    new-instance v0, Lcom/xiaomi/metoknlp/devicediscover/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/devicediscover/j;-><init>(Lcom/xiaomi/metoknlp/devicediscover/m;Lcom/xiaomi/metoknlp/devicediscover/a;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ad:Lcom/xiaomi/metoknlp/devicediscover/j;

    .line 209
    invoke-static {}, Lcom/xiaomi/metoknlp/a;->g()Lcom/xiaomi/metoknlp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/a;->j()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/metoknlp/devicediscover/m;->Z:Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/xiaomi/metoknlp/devicediscover/m;->Z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/api/v2/realip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ad:Lcom/xiaomi/metoknlp/devicediscover/j;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/xiaomi/metoknlp/devicediscover/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/devicediscover/m;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mState:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/devicediscover/m;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/devicediscover/m;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/devicediscover/m;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/metoknlp/devicediscover/m;)Lcom/xiaomi/metoknlp/devicediscover/j;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ad:Lcom/xiaomi/metoknlp/devicediscover/j;

    return-object v0
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 3

    .prologue
    .line 157
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/i;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 160
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    invoke-virtual {v1, v0}, Lcom/xiaomi/metoknlp/devicediscover/c;->j(Ljava/lang/String;)Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 161
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/metoknlp/devicediscover/c;->k(Ljava/lang/String;)Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/devicediscover/c;->a(Ljava/util/List;)Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 173
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/devicediscover/m;->Q()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xiaomi/metoknlp/devicediscover/m;)Lcom/xiaomi/metoknlp/devicediscover/c;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/metoknlp/devicediscover/m;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method Q()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-static {}, Lcom/xiaomi/metoknlp/a;->g()Lcom/xiaomi/metoknlp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/a;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    iput v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mState:I

    .line 112
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/m;->R()V

    .line 113
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ab:Lcom/xiaomi/metoknlp/devicediscover/c;

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/m;->P()V

    goto :goto_0

    .line 118
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mState:I

    .line 119
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/m;->S()V

    goto :goto_0

    .line 122
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mState:I

    .line 123
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/m;->U()V

    goto :goto_0

    .line 126
    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mState:I

    .line 127
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ad:Lcom/xiaomi/metoknlp/devicediscover/j;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/devicediscover/j;->cancel(Z)Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ad:Lcom/xiaomi/metoknlp/devicediscover/j;

    .line 129
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/m;->T()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/xiaomi/metoknlp/devicediscover/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/devicediscover/g;-><init>(Lcom/xiaomi/metoknlp/devicediscover/m;Lcom/xiaomi/metoknlp/devicediscover/a;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ac:Lcom/xiaomi/metoknlp/devicediscover/g;

    .line 87
    new-instance v0, Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-direct {v0, p1}, Lcom/xiaomi/metoknlp/devicediscover/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->aa:Lcom/xiaomi/metoknlp/devicediscover/f;

    .line 88
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->aa:Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/f;->start()V

    .line 89
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->aa:Lcom/xiaomi/metoknlp/devicediscover/f;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ac:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/devicediscover/f;->a(Lcom/xiaomi/metoknlp/devicediscover/o;)V

    .line 90
    return-void
.end method

.method public fecthDeviceImmediately()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->aa:Lcom/xiaomi/metoknlp/devicediscover/f;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->aa:Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/f;->fecthDeviceImmediately()V

    .line 264
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->aa:Lcom/xiaomi/metoknlp/devicediscover/f;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->aa:Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/f;->stop()V

    .line 95
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->aa:Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/f;->F()V

    .line 96
    iput-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->aa:Lcom/xiaomi/metoknlp/devicediscover/f;

    .line 98
    :cond_0
    iput-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/m;->ac:Lcom/xiaomi/metoknlp/devicediscover/g;

    .line 99
    return-void
.end method
