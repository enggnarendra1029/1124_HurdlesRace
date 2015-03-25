.class public final Lorg/andengine/util/SAXUtils;
.super Ljava/lang/Object;
.source "SAXUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;B)V
    .locals 1
    .parameter "pStringBuilder"
    .parameter "pName"
    .parameter "pValue"

    .prologue
    .line 125
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static final appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;D)V
    .locals 1
    .parameter "pStringBuilder"
    .parameter "pName"
    .parameter "pValue"

    .prologue
    .line 145
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static final appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;F)V
    .locals 1
    .parameter "pStringBuilder"
    .parameter "pName"
    .parameter "pValue"

    .prologue
    .line 141
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static final appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1
    .parameter "pStringBuilder"
    .parameter "pName"
    .parameter "pValue"

    .prologue
    .line 133
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static final appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 1
    .parameter "pStringBuilder"
    .parameter "pName"
    .parameter "pValue"

    .prologue
    .line 137
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static final appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "pStringBuilder"
    .parameter "pName"
    .parameter "pValue"

    .prologue
    const/16 v2, 0x22

    .line 149
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    return-void
.end method

.method public static final appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;S)V
    .locals 1
    .parameter "pStringBuilder"
    .parameter "pName"
    .parameter "pValue"

    .prologue
    .line 129
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static final appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1
    .parameter "pStringBuilder"
    .parameter "pName"
    .parameter "pValue"

    .prologue
    .line 121
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static final getAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pAttributes"
    .parameter "pAttributeName"
    .parameter "pDefaultValue"

    .prologue
    .line 38
    const-string v1, ""

    invoke-interface {p0, v1, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static final getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pAttributes"
    .parameter "pAttributeName"

    .prologue
    .line 43
    const-string v1, ""

    invoke-interface {p0, v1, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    return-object v0

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No value found for attribute: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "pAttributes"
    .parameter "pAttributeName"
    .parameter "pDefaultValue"

    .prologue
    .line 52
    const-string v1, ""

    invoke-interface {p0, v1, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .end local p2
    :cond_0
    return p2
.end method

.method public static final getBooleanAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z
    .locals 1
    .parameter "pAttributes"
    .parameter "pAttributeName"

    .prologue
    .line 57
    invoke-static {p0, p1}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final getByteAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;B)B
    .locals 2
    .parameter "pAttributes"
    .parameter "pAttributeName"
    .parameter "pDefaultValue"

    .prologue
    .line 61
    const-string v1, ""

    invoke-interface {p0, v1, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p2

    .end local p2
    :cond_0
    return p2
.end method

.method public static final getByteAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)B
    .locals 1
    .parameter "pAttributes"
    .parameter "pAttributeName"

    .prologue
    .line 66
    invoke-static {p0, p1}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public static final getDoubleAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;D)D
    .locals 2
    .parameter "pAttributes"
    .parameter "pAttributeName"
    .parameter "pDefaultValue"

    .prologue
    .line 111
    const-string v1, ""

    invoke-interface {p0, v1, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    .end local p2
    :cond_0
    return-wide p2
.end method

.method public static final getDoubleAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)D
    .locals 2
    .parameter "pAttributes"
    .parameter "pAttributeName"

    .prologue
    .line 116
    invoke-static {p0, p1}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getFloatAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;F)F
    .locals 2
    .parameter "pAttributes"
    .parameter "pAttributeName"
    .parameter "pDefaultValue"

    .prologue
    .line 101
    const-string v1, ""

    invoke-interface {p0, v1, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .end local p2
    :cond_0
    return p2
.end method

.method public static final getFloatAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)F
    .locals 1
    .parameter "pAttributes"
    .parameter "pAttributeName"

    .prologue
    .line 106
    invoke-static {p0, p1}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static final getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I
    .locals 2
    .parameter "pAttributes"
    .parameter "pAttributeName"
    .parameter "pDefaultValue"

    .prologue
    .line 81
    const-string v1, ""

    invoke-interface {p0, v1, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .end local p2
    :cond_0
    return p2
.end method

.method public static final getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I
    .locals 1
    .parameter "pAttributes"
    .parameter "pAttributeName"

    .prologue
    .line 86
    invoke-static {p0, p1}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getLongAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;J)J
    .locals 2
    .parameter "pAttributes"
    .parameter "pAttributeName"
    .parameter "pDefaultValue"

    .prologue
    .line 91
    const-string v1, ""

    invoke-interface {p0, v1, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .end local p2
    :cond_0
    return-wide p2
.end method

.method public static final getLongAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)J
    .locals 2
    .parameter "pAttributes"
    .parameter "pAttributeName"

    .prologue
    .line 96
    invoke-static {p0, p1}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getShortAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;S)S
    .locals 2
    .parameter "pAttributes"
    .parameter "pAttributeName"
    .parameter "pDefaultValue"

    .prologue
    .line 71
    const-string v1, ""

    invoke-interface {p0, v1, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p2

    .end local p2
    :cond_0
    return p2
.end method

.method public static final getShortAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)S
    .locals 1
    .parameter "pAttributes"
    .parameter "pAttributeName"

    .prologue
    .line 76
    invoke-static {p0, p1}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method
