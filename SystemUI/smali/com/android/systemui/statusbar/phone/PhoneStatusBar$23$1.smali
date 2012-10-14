.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;)V
    .locals 0
    .parameter

    .prologue
    .line 2409
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2419
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2423
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setVisibility(I)V

    .line 2413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_view_widget"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2414
    return-void
.end method
