.class public Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;
.super Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;
.source "SourceFile"


# static fields
.field protected static final mApplyLink:Lmiui/reflect/Method;

.field protected static final mEnd:Lmiui/reflect/Field;

.field protected static final mGatherLinks:Lmiui/reflect/Method;

.field protected static final mGatherMapLinks:Lmiui/reflect/Method;

.field protected static final mPruneOverlaps:Lmiui/reflect/Method;

.field protected static final mStart:Lmiui/reflect/Field;

.field protected static final mUrl:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const-class v0, Landroid/text/util/Linkify;

    const-string v1, "gatherLinks"

    const-string v2, "(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V"

    .line 27
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherLinks:Lmiui/reflect/Method;

    .line 32
    const-class v0, Landroid/text/util/Linkify;

    const-string v1, "gatherMapLinks"

    const-string v2, "(Ljava/util/ArrayList;Landroid/text/Spannable;)V"

    .line 33
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherMapLinks:Lmiui/reflect/Method;

    .line 38
    const-class v0, Landroid/text/util/Linkify;

    const-string v1, "pruneOverlaps"

    const-string v2, "(Ljava/util/ArrayList;)V"

    .line 39
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mPruneOverlaps:Lmiui/reflect/Method;

    .line 44
    const-class v0, Landroid/text/util/Linkify;

    const-string v1, "applyLink"

    const-string v2, "(Ljava/lang/String;IILandroid/text/Spannable;)V"

    .line 45
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mApplyLink:Lmiui/reflect/Method;

    .line 50
    const-string v0, "android.text.util.LinkSpec"

    const-string v1, "url"

    const-string v2, "Ljava/lang/String;"

    .line 51
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mUrl:Lmiui/reflect/Field;

    .line 53
    const-string v0, "android.text.util.LinkSpec"

    const-string v1, "start"

    const-string v2, "I"

    .line 54
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mStart:Lmiui/reflect/Field;

    .line 56
    const-string v0, "android.text.util.LinkSpec"

    const-string v1, "end"

    const-string v2, "I"

    .line 57
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mEnd:Lmiui/reflect/Field;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .line 61
    const-string v0, "addLinks"

    const-string v1, "(Landroid/text/Spannable;I)Z"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 64
    invoke-super {p0}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;->buildProxy()V

    .line 65
    return-void
.end method

.method protected gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 0

    .line 146
    sget-object p3, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherLinks:Lmiui/reflect/Method;

    const/4 p4, 0x6

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    const/4 p1, 0x1

    aput-object p2, p4, p1

    sget-object p1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const/4 p2, 0x2

    aput-object p1, p4, p2

    const-string p1, "tel:"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p4, p2

    sget-object p1, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 p2, 0x4

    aput-object p1, p4, p2

    sget-object p1, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    const/4 p2, 0x5

    aput-object p1, p4, p2

    const/4 p1, 0x0

    invoke-virtual {p3, p1, p1, p4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method protected handle()V
    .locals 6

    .line 69
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->handleAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z

    .line 70
    return-void
.end method

.method protected handleAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    .locals 15

    move-object/from16 v7, p4

    .line 73
    const/4 v8, 0x0

    if-nez p5, :cond_0

    .line 74
    return v8

    .line 77
    :cond_0
    invoke-interface/range {p4 .. p4}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {v7, v8, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 79
    const/4 v9, 0x1

    array-length v1, v0

    sub-int/2addr v1, v9

    :goto_0
    if-ltz v1, :cond_1

    .line 80
    aget-object v2, v0, v1

    invoke-interface {v7, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 79
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 83
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 85
    sget v0, Lmiui/text/util/Linkify;->TIME_PHRASES:I

    and-int v0, p5, v0

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eqz v0, :cond_2

    .line 86
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherLinks:Lmiui/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v10, v3, v8

    aput-object v7, v3, v9

    sget-object v4, Lmiui/util/Patterns;->CHINESE_TIME_PATTERN:Ljava/util/regex/Pattern;

    aput-object v4, v3, v13

    const-string v4, "time:"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    aput-object v14, v3, v12

    aput-object v14, v3, v1

    invoke-virtual {v0, v14, v14, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherLinks:Lmiui/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v10, v3, v8

    aput-object v7, v3, v9

    sget-object v4, Lmiui/util/Patterns;->ENGLISH_TIME_PATTERN:Ljava/util/regex/Pattern;

    aput-object v4, v3, v13

    const-string v4, "time:"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    aput-object v14, v3, v12

    aput-object v14, v3, v1

    invoke-virtual {v0, v14, v14, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 96
    :cond_2
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_3

    .line 97
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherLinks:Lmiui/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v10, v3, v8

    aput-object v7, v3, v9

    sget-object v4, Lmiui/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    aput-object v4, v3, v13

    const-string v4, "http://"

    const-string v5, "https://"

    const-string v6, "rtsp://"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    aput-object v4, v3, v12

    aput-object v14, v3, v1

    invoke-virtual {v0, v14, v14, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 104
    :cond_3
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_4

    .line 105
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherLinks:Lmiui/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v8

    aput-object v7, v2, v9

    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    aput-object v3, v2, v13

    const-string v3, "mailto:"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    aput-object v14, v2, v12

    aput-object v14, v2, v1

    invoke-virtual {v0, v14, v14, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 112
    :cond_4
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_5

    .line 113
    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const-string v0, "tel:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v6, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v0, p0

    move-object v1, v10

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 120
    :cond_5
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_6

    .line 121
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mGatherMapLinks:Lmiui/reflect/Method;

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v10, v1, v8

    aput-object v7, v1, v9

    invoke-virtual {v0, v14, v14, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 124
    :cond_6
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mPruneOverlaps:Lmiui/reflect/Method;

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v10, v1, v8

    invoke-virtual {v0, v14, v14, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 127
    return v8

    .line 130
    :cond_7
    move v0, v8

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 131
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mApplyLink:Lmiui/reflect/Method;

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mUrl:Lmiui/reflect/Field;

    invoke-virtual {v4, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v8

    sget-object v4, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mStart:Lmiui/reflect/Field;

    invoke-virtual {v4, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    sget-object v4, Lcom/miui/internal/variable/v16/Android_Text_Util_Linkify_class;->mEnd:Lmiui/reflect/Field;

    .line 133
    invoke-virtual {v4, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v13

    aput-object v7, v3, v11

    .line 132
    invoke-virtual {v2, v14, v14, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_8
    return v9
.end method

.method protected originalAddLinks(JLandroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    .locals 0

    .line 139
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Text_Util_Linkify_class.originalAddLinks(long, Linkify, Spannable, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
