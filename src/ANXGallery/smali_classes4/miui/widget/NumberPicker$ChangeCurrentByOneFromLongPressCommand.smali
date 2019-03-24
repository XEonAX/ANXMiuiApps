.class Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field final synthetic Xg:Lmiui/widget/NumberPicker;

.field private Xm:Z


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    .line 2180
    iput-object p1, p0, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->Xg:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 2180
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->y(Z)V

    return-void
.end method

.method private y(Z)V
    .locals 0

    .line 2184
    iput-boolean p1, p0, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->Xm:Z

    .line 2185
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2189
    iget-object v0, p0, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->Xg:Lmiui/widget/NumberPicker;

    iget-boolean v1, p0, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->Xm:Z

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2190
    iget-object v0, p0, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->Xg:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->h(Lmiui/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2191
    return-void
.end method
