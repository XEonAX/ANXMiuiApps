.class public Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;
.super Ljava/lang/Object;
.source "ComponentsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "class-name"
    .end annotation
.end field

.field private mOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order"
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package-name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "order"    # I

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;->mPackageName:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;->mClassName:Ljava/lang/String;

    .line 197
    iput p3, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;->mOrder:I

    .line 198
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Component{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClassName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Component;->mOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
