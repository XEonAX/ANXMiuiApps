.class Lmiui/widget/NavigationLayout$WidthDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidthDescription"
.end annotation


# instance fields
.field public type:I

.field public value:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;
    .locals 5

    .line 1070
    new-instance v0, Lmiui/widget/NavigationLayout$WidthDescription;

    invoke-direct {v0}, Lmiui/widget/NavigationLayout$WidthDescription;-><init>()V

    .line 1071
    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x1

    if-nez p0, :cond_0

    .line 1072
    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    .line 1073
    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    goto :goto_0

    .line 1075
    :cond_0
    iget v3, p0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 1076
    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    .line 1077
    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    iput p0, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    .line 1078
    return-object v0

    .line 1079
    :cond_1
    iget v3, p0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1080
    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    .line 1081
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    iput p0, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    .line 1082
    return-object v0

    .line 1083
    :cond_2
    iget v3, p0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 1084
    const/4 v1, 0x0

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    .line 1085
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 1086
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1085
    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    iput p0, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    .line 1087
    return-object v0

    .line 1091
    :cond_3
    :goto_0
    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    .line 1092
    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    .line 1094
    return-object v0
.end method
