.class public final Lorg/andengine/util/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# static fields
.field public static final SPLITPATTERN_COMMA:Ljava/util/regex/Pattern;

.field public static final SPLITPATTERN_SPACE:Ljava/util/regex/Pattern;

.field public static final SPLITPATTERN_SPACES:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/andengine/util/TextUtils;->SPLITPATTERN_SPACE:Ljava/util/regex/Pattern;

    .line 20
    const-string v0, " +"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/andengine/util/TextUtils;->SPLITPATTERN_SPACES:Ljava/util/regex/Pattern;

    .line 21
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/andengine/util/TextUtils;->SPLITPATTERN_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countCharacters(Ljava/util/List;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, pTexts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/andengine/util/TextUtils;->countCharacters(Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

.method public static countCharacters(Ljava/util/List;Z)I
    .locals 6
    .parameter
    .parameter "pIgnoreWhitespaces"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, pTexts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .line 136
    .local v1, characters:I
    if-eqz p1, :cond_4

    .line 137
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 152
    :cond_0
    return v1

    .line 138
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 139
    .local v4, text:Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, j:I
    :goto_1
    if-gez v3, :cond_2

    .line 137
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 140
    :cond_2
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 141
    .local v0, character:C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 139
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 147
    .end local v0           #character:C
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .restart local v2       #i:I
    :goto_2
    if-ltz v2, :cond_0

    .line 148
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 149
    .restart local v4       #text:Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 147
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method public static final countOccurrences(Ljava/lang/CharSequence;C)I
    .locals 3
    .parameter "pText"
    .parameter "pCharacter"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, count:I
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 64
    .local v1, lastOccurrence:I
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 69
    return v0

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 66
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    goto :goto_0
.end method

.method public static final formatStackTrace(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2
    .parameter "pStackTraceElement"

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    return-object v0
.end method

.method public static final formatStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4
    .parameter "pStackTraceElements"

    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v1, sb:Ljava/lang/StringBuilder;
    array-length v2, p0

    .line 121
    .local v2, stackTraceElementCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 122
    :cond_0
    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_1

    .line 124
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final padFront(Ljava/lang/CharSequence;CI)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pText"
    .parameter "pPadChar"
    .parameter "pLength"

    .prologue
    .line 44
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v1, p2, v3

    .line 45
    .local v1, padCount:I
    if-gtz v1, :cond_0

    .line 55
    .end local p0
    :goto_0
    return-object p0

    .line 48
    .restart local p0
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v2, sb:Ljava/lang/StringBuilder;
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_1

    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static final split(Ljava/lang/CharSequence;C)Ljava/util/ArrayList;
    .locals 1
    .parameter "pText"
    .parameter "pCharacter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "C)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/andengine/util/TextUtils;->split(Ljava/lang/CharSequence;CLjava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final split(Ljava/lang/CharSequence;CLjava/util/List;)Ljava/util/List;
    .locals 5
    .parameter "pText"
    .parameter "pCharacter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>(",
            "Ljava/lang/CharSequence;",
            "CT",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, pResult:Ljava/util/List;,"TL;"
    invoke-static {p0, p1}, Lorg/andengine/util/TextUtils;->countOccurrences(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 87
    .local v2, partCount:I
    if-nez v2, :cond_0

    .line 88
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_0
    return-object p2

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, from:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    add-int/lit8 v4, v2, -0x1

    if-lt v1, v4, :cond_1

    .line 99
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p0, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    .line 95
    .local v3, to:I
    invoke-interface {p0, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v0, v3, 0x1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
