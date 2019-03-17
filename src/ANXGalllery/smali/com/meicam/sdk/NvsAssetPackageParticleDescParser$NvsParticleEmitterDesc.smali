.class public Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;
.super Ljava/lang/Object;
.source "NvsAssetPackageParticleDescParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NvsParticleEmitterDesc"
.end annotation


# instance fields
.field public m_emitterNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m_emitterPlace:I

.field final synthetic this$0:Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;


# direct methods
.method public constructor <init>(Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->this$0:Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterNames:Ljava/util/ArrayList;

    return-void
.end method
