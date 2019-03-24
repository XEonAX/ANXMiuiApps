.class Lmiui/widget/NumberPicker$PressedStateHelper;
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
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final Xo:I = 0x1

.field public static final Xp:I = 0x2


# instance fields
.field final synthetic Xg:Lmiui/widget/NumberPicker;

.field private final Xq:I

.field private final Xr:I

.field private Xs:I

.field private Xt:I


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    .line 2085
    iput-object p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2089
    const/4 p1, 0x1

    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xq:I

    .line 2090
    const/4 p1, 0x2

    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xr:I

    return-void
.end method


# virtual methods
.method public aA(I)V
    .locals 2

    .line 2110
    invoke-virtual {p0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2111
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xt:I

    .line 2112
    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xs:I

    .line 2113
    iget-object p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2114
    return-void
.end method

.method public aB(I)V
    .locals 1

    .line 2117
    invoke-virtual {p0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2118
    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xt:I

    .line 2119
    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xs:I

    .line 2120
    iget-object p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1, p0}, Lmiui/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2121
    return-void
.end method

.method public cancel()V
    .locals 5

    .line 2096
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xt:I

    .line 2097
    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xs:I

    .line 2098
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, p0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2099
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2100
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;Z)Z

    .line 2101
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    iget-object v2, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2103
    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->f(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2104
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;Z)Z

    .line 2105
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    iget-object v2, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2107
    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .line 2125
    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xt:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2139
    :pswitch_0
    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xs:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 2149
    :pswitch_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->f(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2150
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    .line 2151
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2150
    invoke-virtual {v0, p0, v3, v4}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2153
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;I)Z

    .line 2154
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_1

    .line 2141
    :pswitch_2
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2142
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    .line 2143
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2142
    invoke-virtual {v0, p0, v3, v4}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2145
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;I)Z

    .line 2146
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2147
    goto :goto_1

    .line 2127
    :pswitch_3
    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xs:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2133
    :pswitch_4
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;Z)Z

    .line 2134
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2129
    :pswitch_5
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;Z)Z

    .line 2130
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2131
    nop

    .line 2137
    :goto_0
    nop

    .line 2159
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
