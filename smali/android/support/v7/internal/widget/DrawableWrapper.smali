.class Landroid/support/v7/internal/widget/DrawableWrapper;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapper.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "who"

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/DrawableWrapper;->invalidateSelf()V

    .line 155
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 161
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v7/internal/widget/DrawableWrapper;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 162
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 79
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .parameter "mirrored"

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 179
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .parameter "configs"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 59
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 84
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 69
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 74
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 204
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 209
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .parameter "stateSet"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1
    .parameter "tint"

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 189
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "tint"

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 194
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "tintMode"

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 199
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "who"
    .parameter "what"

    .prologue
    .line 168
    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/DrawableWrapper;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method
