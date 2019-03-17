.class public Lcom/alibaba/baichuan/trade/biz/utils/AlibcTradeSclickUtil;
.super Ljava/lang/Object;


# static fields
.field public static final RE_SCLICK_URLS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "^http(s)?://s\\.click\\.(taobao|tmall)\\.com/(.*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcTradeSclickUtil;->RE_SCLICK_URLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSclickUrl(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/alibaba/baichuan/trade/biz/utils/AlibcTradeSclickUtil;->RE_SCLICK_URLS:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-static {v4, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
