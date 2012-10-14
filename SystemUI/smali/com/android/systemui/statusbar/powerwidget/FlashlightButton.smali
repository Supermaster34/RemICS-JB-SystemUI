.class public Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "FlashlightButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTorch:Lcom/android/systemui/statusbar/powerwidget/Torch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->OBSERVED_URIS:Ljava/util/List;

    .line 23
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleFlashlight"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mState:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Torch;->getTorch()Lcom/android/systemui/statusbar/powerwidget/Torch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mTorch:Lcom/android/systemui/statusbar/powerwidget/Torch;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mTorch:Lcom/android/systemui/statusbar/powerwidget/Torch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->finish()V

    .line 54
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "torch_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/statusbar/powerwidget/Torch;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 30
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 32
    .local v0, enabled:Z
    :cond_0
    if-eqz v0, :cond_1

    .line 33
    const v2, 0x7f020072

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mIcon:I

    .line 34
    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mState:I

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_1
    const v1, 0x7f020071

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mIcon:I

    .line 37
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->mState:I

    goto :goto_0
.end method
