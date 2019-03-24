.class Lmiui/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field final synthetic Xg:Lmiui/widget/NumberPicker;

.field private Xu:I

.field private Xv:I


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    .line 2165
    iput-object p1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xg:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0

    .line 2165
    iput p1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xu:I

    return p1
.end method

.method static synthetic b(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0

    .line 2165
    iput p1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xv:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2171
    iget v0, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xv:I

    iget-object v1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2172
    iget-object v0, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xu:I

    iget v2, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->Xv:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2174
    :cond_0
    return-void
.end method
