.class Lmiui/widget/NumberPicker$NumberFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberFormatter"
.end annotation


# instance fields
.field private final Xn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/NumberPicker$NumberFormatter;->Xn:I

    .line 155
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Lmiui/widget/NumberPicker$NumberFormatter;->Xn:I

    .line 159
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 1

    .line 162
    iget v0, p0, Lmiui/widget/NumberPicker$NumberFormatter;->Xn:I

    invoke-static {v0, p1}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
