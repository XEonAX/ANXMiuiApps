.class public Lcom/miui/internal/variable/v19/Android_Text_Util_Linkify_class;
.super Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;
.source "SourceFile"


# static fields
.field protected static sGatherTelLinks:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    :try_start_0
    const-class v0, Landroid/text/util/Linkify;

    const-string v1, "gatherTelLinks"

    const-string v2, "(Ljava/util/ArrayList;Landroid/text/Spannable;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v19/Android_Text_Util_Linkify_class;->sGatherTelLinks:Lmiui/reflect/Method;
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/variable/v19/Android_Text_Util_Linkify_class;->sGatherTelLinks:Lmiui/reflect/Method;

    .line 35
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;-><init>()V

    return-void
.end method


# virtual methods
.method public gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 0

    .line 42
    sget-object p3, Lcom/miui/internal/variable/v19/Android_Text_Util_Linkify_class;->sGatherTelLinks:Lmiui/reflect/Method;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    const/4 p1, 0x1

    aput-object p2, p4, p1

    const/4 p1, 0x0

    invoke-virtual {p3, p1, p1, p4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method
