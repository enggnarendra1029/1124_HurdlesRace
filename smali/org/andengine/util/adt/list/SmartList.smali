.class public Lorg/andengine/util/adt/list/SmartList;
.super Ljava/util/ArrayList;
.source "SmartList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x781f1d9385e4b86bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "pCapacity"

    .prologue
    .line 36
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/andengine/util/adt/list/SmartList;->add(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/andengine/util/adt/list/SmartList;->add(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method public call(Lorg/andengine/util/IMatcher;Lorg/andengine/util/call/ParameterCallable;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;",
            "Lorg/andengine/util/call/ParameterCallable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p2, pParameterCallable:Lorg/andengine/util/call/ParameterCallable;,"Lorg/andengine/util/call/ParameterCallable<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 216
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 212
    .local v1, item:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-interface {p2, v1}, Lorg/andengine/util/call/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 210
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public call(Lorg/andengine/util/call/ParameterCallable;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/call/ParameterCallable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pParameterCallable:Lorg/andengine/util/call/ParameterCallable;,"Lorg/andengine/util/call/ParameterCallable<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 207
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 205
    .local v1, item:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Lorg/andengine/util/call/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public clear(Lorg/andengine/util/call/ParameterCallable;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/call/ParameterCallable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pParameterCallable:Lorg/andengine/util/call/ParameterCallable;,"Lorg/andengine/util/call/ParameterCallable<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 146
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 144
    .local v1, removed:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Lorg/andengine/util/call/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 142
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public get(Lorg/andengine/util/IMatcher;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    .line 65
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 71
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 66
    :cond_1
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, item:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Lorg/andengine/util/IMatcher;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    .line 150
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 156
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 151
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 152
    .local v1, item:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public lastIndexOf(Lorg/andengine/util/IMatcher;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 166
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 161
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 162
    .local v1, item:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public query(Lorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/list/SmartList;->query(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public query(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p2, pResult:Ljava/util/List;,"TL;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    .line 175
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 182
    return-object p2

    .line 176
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, item:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public queryForSubclass(Lorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/list/SmartList;->queryForSubclass(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public queryForSubclass(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TS;>;S:TT;>(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p2, pResult:Ljava/util/List;,"TL;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    .line 192
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 199
    return-object p2

    .line 193
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 194
    .local v1, item:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove(Lorg/andengine/util/IMatcher;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 100
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 96
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 95
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove(Lorg/andengine/util/IMatcher;Lorg/andengine/util/call/ParameterCallable;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;",
            "Lorg/andengine/util/call/ParameterCallable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p2, pParameterCallable:Lorg/andengine/util/call/ParameterCallable;,"Lorg/andengine/util/call/ParameterCallable<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 111
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 105
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 107
    .local v1, removed:Ljava/lang/Object;,"TT;"
    invoke-interface {p2, v1}, Lorg/andengine/util/call/ParameterCallable;->call(Ljava/lang/Object;)V

    goto :goto_1

    .line 104
    .end local v1           #removed:Ljava/lang/Object;,"TT;"
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Lorg/andengine/util/call/ParameterCallable;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/andengine/util/call/ParameterCallable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    .local p2, pParameterCallable:Lorg/andengine/util/call/ParameterCallable;,"Lorg/andengine/util/call/ParameterCallable<TT;>;"
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/SmartList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    .local v0, removed:Z
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {p2, p1}, Lorg/andengine/util/call/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 91
    :cond_0
    return v0
.end method

.method public removeAll(Lorg/andengine/util/IMatcher;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    const/4 v1, 0x0

    .line 116
    .local v1, result:Z
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 122
    return v1

    .line 117
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->remove(I)Ljava/lang/Object;

    .line 119
    const/4 v1, 0x1

    .line 116
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public removeAll(Lorg/andengine/util/IMatcher;Lorg/andengine/util/call/ParameterCallable;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;",
            "Lorg/andengine/util/call/ParameterCallable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p2, pParameterCallable:Lorg/andengine/util/call/ParameterCallable;,"Lorg/andengine/util/call/ParameterCallable<TT;>;"
    const/4 v2, 0x0

    .line 131
    .local v2, result:Z
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 138
    return v2

    .line 132
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 134
    .local v1, removed:Ljava/lang/Object;,"TT;"
    invoke-interface {p2, v1}, Lorg/andengine/util/call/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 135
    const/4 v2, 0x1

    .line 131
    .end local v1           #removed:Ljava/lang/Object;,"TT;"
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
