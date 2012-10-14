.class Lcom/android/systemui/statusbar/tablet/SettingsView$1;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/AutoRotateController$RotationLockCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/SettingsView;->setToggleController(Ljava/lang/String;Landroid/widget/CompoundButton;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/SettingsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/SettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView$1;->this$0:Lcom/android/systemui/statusbar/tablet/SettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRotationLockControlVisibility(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView$1;->this$0:Lcom/android/systemui/statusbar/tablet/SettingsView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotationLockContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    return-void

    .line 220
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
