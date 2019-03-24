.class Lmiui/widget/PictureClock$AmPm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PictureClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private XM:Landroid/widget/TextView;

.field private XN:Ljava/lang/String;

.field private XO:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    sget v0, Lcom/miui/internal/R$id;->am_pm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiui/widget/PictureClock$AmPm;->XM:Landroid/widget/TextView;

    .line 142
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object p1

    .line 143
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/widget/PictureClock$AmPm;->XN:Ljava/lang/String;

    .line 144
    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lmiui/widget/PictureClock$AmPm;->XO:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method A(Z)V
    .locals 1

    .line 148
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->XM:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->XM:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_1
    return-void
.end method

.method B(Z)V
    .locals 1

    .line 154
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->XM:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->XM:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/PictureClock$AmPm;->XN:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiui/widget/PictureClock$AmPm;->XO:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    return-void
.end method
