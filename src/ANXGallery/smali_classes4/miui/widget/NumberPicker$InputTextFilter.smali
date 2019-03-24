.class Lmiui/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic Xg:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    .line 2002
    iput-object p1, p0, Lmiui/widget/NumberPicker$InputTextFilter;->Xg:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 2018
    iget-object v0, p0, Lmiui/widget/NumberPicker$InputTextFilter;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2019
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2020
    if-nez v0, :cond_0

    .line 2021
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2024
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2025
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2027
    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2028
    return-object p1

    .line 2030
    :cond_1
    iget-object p2, p0, Lmiui/widget/NumberPicker$InputTextFilter;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p2, p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;Ljava/lang/String;)I

    move-result p2

    .line 2039
    iget-object p3, p0, Lmiui/widget/NumberPicker$InputTextFilter;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p3}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;)I

    move-result p3

    if-gt p2, p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$InputTextFilter;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p1, p2, :cond_2

    goto :goto_0

    .line 2042
    :cond_2
    return-object v0

    .line 2040
    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1

    .line 2045
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2046
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2047
    const-string p1, ""

    return-object p1

    .line 2049
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2050
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    invoke-interface {p4, p6, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2051
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 2052
    iget-object p3, p0, Lmiui/widget/NumberPicker$InputTextFilter;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p3}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object p3

    array-length p4, p3

    :goto_1
    if-ge v1, p4, :cond_7

    aget-object p6, p3, v1

    .line 2053
    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2054
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2055
    iget-object p2, p0, Lmiui/widget/NumberPicker$InputTextFilter;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2, p1, p3}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;II)V

    .line 2056
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p6, p5, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 2052
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2059
    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .line 2012
    invoke-static {}, Lmiui/widget/NumberPicker;->fs()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 2007
    const/4 v0, 0x1

    return v0
.end method
