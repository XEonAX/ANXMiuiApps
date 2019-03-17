.class final Lcom/miui/gallery/share/GridPreferenceBase$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "GridPreferenceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/GridPreferenceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/GridPreferenceBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/GridPreferenceBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/GridPreferenceBase;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/share/GridPreferenceBase$MyDataSetObserver;->this$0:Lcom/miui/gallery/share/GridPreferenceBase;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/share/GridPreferenceBase$MyDataSetObserver;->this$0:Lcom/miui/gallery/share/GridPreferenceBase;

    invoke-virtual {v0}, Lcom/miui/gallery/share/GridPreferenceBase;->update()V

    .line 41
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/share/GridPreferenceBase$MyDataSetObserver;->this$0:Lcom/miui/gallery/share/GridPreferenceBase;

    invoke-virtual {v0}, Lcom/miui/gallery/share/GridPreferenceBase;->update()V

    .line 46
    return-void
.end method
