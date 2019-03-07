.class Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;
.super Ljava/lang/RuntimeException;
.source "StickyGridHeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RuntimePlatformSupportException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a5f9f5d38e819daL


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;


# direct methods
.method public constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$RuntimePlatformSupportException;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    .line 1335
    invoke-static {}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->access$800()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1336
    return-void
.end method
