.class Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 178
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 179
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$100(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "statusbar_battery_icon"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #calls: Lcom/android/systemui/statusbar/policy/BatteryController;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$200(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 191
    return-void
.end method
