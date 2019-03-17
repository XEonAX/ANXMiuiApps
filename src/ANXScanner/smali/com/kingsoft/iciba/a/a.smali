.class public Lcom/kingsoft/iciba/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static g:Landroid/content/ComponentName;


# instance fields
.field private b:Landroid/content/Context;

.field private c:J

.field private d:Z

.field private e:J

.field private f:Lcom/kingsoft/iciba/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/kingsoft/iciba/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/iciba/a/a;->a:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.kingsoft"

    const-string v2, "com.kingsoft.WordDetailActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kingsoft/iciba/a/a;->g:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/iciba/a/a;->d:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/iciba/a/a;->e:J

    iput-object p1, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "status"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "message"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "word_name"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "result_info"

    const-string v4, "\u67e5\u8be2\u5931\u8d25,\u8981\u67e5\u8be2\u8bcd\u6c47\u4e0d\u7b26\u5408\u8981\u6c42"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/kingsoft/iciba/a/a;->a:Ljava/lang/String;

    const-string v3, "Create json object failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "status"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "message"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "word_name"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_1

    const-string v3, "result_info"

    const-string v4, "\u8bf7\u6253\u5f00\u7f51\u7edc\uff0c\u6216\u8005\u5b89\u88c5\u8bcd\u9738\u5e94\u7528"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    const-string v3, "result_info"

    const-string v4, "\u672c\u5730\u65e0\u91ca\u4e49\uff0c\u8bf7\u6253\u5f00\u7f51\u7edc\u8fdb\u884c\u67e5\u8be2"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/kingsoft/iciba/a/a;->a:Ljava/lang/String;

    const-string v3, "Create json object failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    :try_start_1
    const-string v3, "result_info"

    const-string v4, "\u672c\u5730\u8bcd\u5178\u7248\u672c\u4e0d\u652f\u6301\uff0c\u8bf7\u5347\u7ea7\u8bcd\u9738\u5e94\u7528\uff0c\u6216\u8005\u6253\u5f00\u7f51\u7edc\u8fdb\u884c\u67e5\u8be2"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    const-string v3, "result_info"

    const-string v4, "\u65e0\u7f51\u7edc\uff0c\u4e0d\u80fd\u76f4\u63a5\u4ece\u7f51\u7edc\u83b7\u53d6\u91ca\u4e49"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    const-string v3, "result_info"

    const-string v4, "\u65e0\u6c49\u6c49\u91ca\u4e49"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "message"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "word_name"

    invoke-virtual {v5, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result_info"

    const-string v2, "\u83b7\u53d6\u91ca\u4e49\u6210\u529f"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    move-object v2, v0

    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-ne p2, v8, :cond_1

    if-eqz v1, :cond_0

    const-string v2, "cc_mean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/kingsoft/iciba/a/a;->a:Ljava/lang/String;

    const-string v4, "Create json object failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    :goto_1
    return-object v1

    :cond_1
    if-nez p2, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    const-string v2, "baseInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.kingsoft"

    invoke-static {p0, v0}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string v0, "show_detail_mean"

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/kingsoft/iciba/a/a;->g:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/kingsoft/iciba/a/a;->a:Ljava/lang/String;

    const-string v2, "Start iciba app failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    const-string v0, "install_iciba"

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    const-string v1, "market://details?id=com.kingsoft"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/kingsoft/iciba/a/a;->a:Ljava/lang/String;

    const-string v2, "Open market failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v0, "install_iciba"

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    const-string v1, "market://details?id=com.kingsoft"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/kingsoft/iciba/a/a;->a:Ljava/lang/String;

    const-string v2, "Open market failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/ArrayList;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "baseInfo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "status"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "message"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "word_name"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "result_info"

    const-string v4, "\u67e5\u8be2\u5931\u8d25,\u5382\u5546ID\u4e0d\u6b63\u786e\u6216\u8005\u5df2\u8fc7\u671f"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/kingsoft/iciba/a/a;->a:Ljava/lang/String;

    const-string v3, "Create json object failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 7

    const/4 v0, 0x0

    iput-wide p1, p0, Lcom/kingsoft/iciba/a/a;->c:J

    iput-boolean v0, p0, Lcom/kingsoft/iciba/a/a;->d:Z

    sget-object v1, Lcom/kingsoft/iciba/a/b;->c:[J

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/iciba/a/a;->d:Z

    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/iciba/a/a;->d:Z

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kingsoft/iciba/a/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kingsoft/iciba/a/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kingsoft/iciba/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iciba_statistics"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    sget-object v1, Lcom/kingsoft/iciba/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/iciba/a/a;->e:J

    new-instance v0, Lcom/kingsoft/iciba/a/c;

    iget-object v1, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingsoft/iciba/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/iciba/a/a;->f:Lcom/kingsoft/iciba/a/c;

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->f:Lcom/kingsoft/iciba/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/iciba/a/c;->a(J)V

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/kingsoft/iciba/a/a;->a:Ljava/lang/String;

    const-string v2, "Create file failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public a(Ljava/lang/String;ILcom/kingsoft/iciba/a/a/a;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/kingsoft/iciba/a/e;->b(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/kingsoft/iciba/a/a;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/iciba/a/a;->e:J

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    sget-object v1, Lcom/kingsoft/iciba/a/b;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/kingsoft/iciba/a/a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingsoft/iciba/a/a;->e:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1499700

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iput-wide v0, p0, Lcom/kingsoft/iciba/a/a;->e:J

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    sget-object v1, Lcom/kingsoft/iciba/a/b;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/kingsoft/iciba/a/a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/kingsoft/iciba/a/a;->d:Z

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/kingsoft/iciba/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kingsoft/iciba/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/kingsoft/iciba/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kingsoft/iciba/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->f:Lcom/kingsoft/iciba/a/c;

    invoke-virtual {v0}, Lcom/kingsoft/iciba/a/c;->a()Z

    move-result v0

    if-ne p2, v6, :cond_6

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/kingsoft/iciba/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kingsoft/iciba/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-nez p2, :cond_d

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->f:Lcom/kingsoft/iciba/a/c;

    invoke-virtual {v0}, Lcom/kingsoft/iciba/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->f:Lcom/kingsoft/iciba/a/c;

    invoke-virtual {v0, p1}, Lcom/kingsoft/iciba/a/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-static {v0}, Lcom/kingsoft/iciba/a/a;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1, v0, p2}, Lcom/kingsoft/iciba/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kingsoft/iciba/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/kingsoft/iciba/a/a;->c:J

    invoke-static {v1, v2, v3}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;J)Lcom/kingsoft/iciba/a/e;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/kingsoft/iciba/a/g;

    invoke-direct {v3, v1, p1, v0, p3}, Lcom/kingsoft/iciba/a/g;-><init>(Lcom/kingsoft/iciba/a/e;Ljava/lang/String;Ljava/util/ArrayList;Lcom/kingsoft/iciba/a/a/a;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :cond_8
    invoke-static {p1, v6}, Lcom/kingsoft/iciba/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kingsoft/iciba/a/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/kingsoft/iciba/a/a;->c:J

    invoke-static {v0, v2, v3}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;J)Lcom/kingsoft/iciba/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/kingsoft/iciba/a/e;->a(Ljava/lang/String;Lcom/kingsoft/iciba/a/a/a;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {p1, v7}, Lcom/kingsoft/iciba/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kingsoft/iciba/a/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/kingsoft/iciba/a/a;->c:J

    invoke-static {v0, v2, v3}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;J)Lcom/kingsoft/iciba/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/kingsoft/iciba/a/e;->a(Ljava/lang/String;Lcom/kingsoft/iciba/a/a/a;)V

    goto/16 :goto_1

    :cond_c
    invoke-static {p1, v8}, Lcom/kingsoft/iciba/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kingsoft/iciba/a/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    if-ne p2, v7, :cond_1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->f:Lcom/kingsoft/iciba/a/c;

    invoke-virtual {v0}, Lcom/kingsoft/iciba/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->f:Lcom/kingsoft/iciba/a/c;

    invoke-virtual {v0, p1}, Lcom/kingsoft/iciba/a/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    invoke-static {v0}, Lcom/kingsoft/iciba/a/a;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p1, v0, p2}, Lcom/kingsoft/iciba/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kingsoft/iciba/a/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/kingsoft/iciba/a/a;->c:J

    invoke-static {v0, v2, v3}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;J)Lcom/kingsoft/iciba/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/kingsoft/iciba/a/e;->a(Ljava/lang/String;Lcom/kingsoft/iciba/a/a/a;)V

    goto/16 :goto_1

    :cond_f
    invoke-static {p1, v6}, Lcom/kingsoft/iciba/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kingsoft/iciba/a/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/kingsoft/iciba/a/a;->c:J

    invoke-static {v0, v2, v3}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;J)Lcom/kingsoft/iciba/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/kingsoft/iciba/a/e;->a(Ljava/lang/String;Lcom/kingsoft/iciba/a/a/a;)V

    goto/16 :goto_1

    :cond_11
    invoke-static {p1, v7}, Lcom/kingsoft/iciba/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kingsoft/iciba/a/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/kingsoft/iciba/a/a;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/kingsoft/iciba/a/a;->c:J

    invoke-static {v0, v2, v3}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;J)Lcom/kingsoft/iciba/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/kingsoft/iciba/a/e;->a(Ljava/lang/String;Lcom/kingsoft/iciba/a/a/a;)V

    goto/16 :goto_1

    :cond_13
    invoke-static {p1, v8}, Lcom/kingsoft/iciba/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kingsoft/iciba/a/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
