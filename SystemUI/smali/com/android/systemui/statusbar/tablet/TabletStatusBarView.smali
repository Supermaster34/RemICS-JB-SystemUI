.class public Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
.super Landroid/widget/FrameLayout;
.source "TabletStatusBarView.java"


# instance fields
.field private final MAX_PANELS:I

.field private mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

.field private mHandler:Landroid/os/Handler;

.field private final mIgnoreChildren:[Landroid/view/View;

.field private final mPanels:[Landroid/view/View;

.field private final mPos:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x5

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->MAX_PANELS:I

    .line 38
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    .line 39
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPos:[I

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/DelegateViewHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "systemui_navbar_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->updateColor()V

    return-void
.end method

.method private eventInside(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 133
    .local v5, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 135
    .local v6, y:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPos:[I

    .line 136
    .local v2, p:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 138
    aget v1, v2, v8

    .line 139
    .local v1, l:I
    aget v4, v2, v7

    .line 140
    .local v4, t:I
    aget v9, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int v3, v9, v10

    .line 141
    .local v3, r:I
    aget v9, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int v0, v9, v10

    .line 143
    .local v0, b:I
    if-lt v5, v1, :cond_0

    if-ge v5, v3, :cond_0

    if-lt v6, v4, :cond_0

    if-ge v6, v0, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method private updateColor()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "systemui_navbar_color"

    const/high16 v3, -0x100

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, color:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 165
    const/high16 v0, -0x100

    .line 167
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setBackgroundColor(I)V

    .line 169
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x411

    const/16 v3, 0x3e9

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->eventInside(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 108
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 79
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 83
    const v1, 0x7f0c0068

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 85
    const v1, 0x7f0c0016

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setSourceView(Landroid/view/View;)V

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setInitialTouchRegion([Landroid/view/View;)V

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->updateColor()V

    .line 90
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 1
    .parameter "phoneStatusBar"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 67
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDelegateView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    .line 148
    return-void
.end method

.method public setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "index"
    .parameter "ignore"
    .parameter "panel"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aput-object p3, v0, p1

    .line 158
    return-void
.end method
