.class public Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;
.super Ljava/lang/Object;
.source "RuleBuilder.java"


# static fields
.field private static final CAT:Ljava/lang/String; = "cat"

.field private static final CLOSED:Ljava/lang/String; = "closed"

.field private static final E:Ljava/lang/String; = "e"

.field private static final K:Ljava/lang/String; = "k"

.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final STRING_NEGATION:Ljava/lang/String; = "~"

.field private static final STRING_WILDCARD:Ljava/lang/String; = "*"

.field private static final V:Ljava/lang/String; = "v"

.field private static final ZOOM_MAX:Ljava/lang/String; = "zoom-max"

.field private static final ZOOM_MIN:Ljava/lang/String; = "zoom-min"


# instance fields
.field cat:Ljava/lang/String;

.field private closed:Lorg/mapsforge/map/rendertheme/rule/Closed;

.field closedMatcher:Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

.field private element:Lorg/mapsforge/map/rendertheme/rule/Element;

.field elementMatcher:Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

.field private keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keys:Ljava/lang/String;

.field private final ruleStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/mapsforge/map/rendertheme/rule/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private valueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private values:Ljava/lang/String;

.field zoomMax:B

.field zoomMin:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "\\|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Stack;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Stack<",
            "Lorg/mapsforge/map/rendertheme/rule/Rule;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 108
    .local p3, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/map/rendertheme/rule/Rule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p3, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->ruleStack:Ljava/util/Stack;

    .line 111
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Closed;->ANY:Lorg/mapsforge/map/rendertheme/rule/Closed;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->closed:Lorg/mapsforge/map/rendertheme/rule/Closed;

    .line 112
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->zoomMin:B

    .line 113
    const/16 v0, 0x7f

    iput-byte v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->zoomMax:B

    .line 115
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->extractValues(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 116
    return-void
.end method

.method private extractValues(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 138
    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "value":Ljava/lang/String;
    const-string v3, "e"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-static {v2}, Lorg/mapsforge/map/rendertheme/rule/Element;->fromString(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/rule/Element;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->element:Lorg/mapsforge/map/rendertheme/rule/Element;

    goto :goto_1

    .line 143
    :cond_0
    const-string v3, "k"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->keys:Ljava/lang/String;

    goto :goto_1

    .line 145
    :cond_1
    const-string v3, "v"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->values:Ljava/lang/String;

    goto :goto_1

    .line 147
    :cond_2
    const-string v3, "cat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->cat:Ljava/lang/String;

    goto :goto_1

    .line 149
    :cond_3
    const-string v3, "closed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 150
    invoke-static {v2}, Lorg/mapsforge/map/rendertheme/rule/Closed;->fromString(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/rule/Closed;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->closed:Lorg/mapsforge/map/rendertheme/rule/Closed;

    goto :goto_1

    .line 151
    :cond_4
    const-string v3, "zoom-min"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 152
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeByte(Ljava/lang/String;Ljava/lang/String;)B

    move-result v3

    iput-byte v3, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->zoomMin:B

    goto :goto_1

    .line 153
    :cond_5
    const-string v3, "zoom-max"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 154
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeByte(Ljava/lang/String;Ljava/lang/String;)B

    move-result v3

    iput-byte v3, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->zoomMax:B

    .line 137
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_6
    invoke-static {p1, v1, v2, v0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->createXmlPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v3

    throw v3

    .line 160
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, p1}, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->validate(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->keys:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->keyList:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->values:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->valueList:Ljava/util/List;

    .line 165
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->element:Lorg/mapsforge/map/rendertheme/rule/Element;

    invoke-static {v0}, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->getElementMatcher(Lorg/mapsforge/map/rendertheme/rule/Element;)Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->elementMatcher:Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    .line 166
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->closed:Lorg/mapsforge/map/rendertheme/rule/Closed;

    invoke-static {v0}, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->getClosedMatcher(Lorg/mapsforge/map/rendertheme/rule/Closed;)Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->closedMatcher:Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    .line 168
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->elementMatcher:Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->ruleStack:Ljava/util/Stack;

    invoke-static {v0, v1}, Lorg/mapsforge/map/rendertheme/rule/RuleOptimizer;->optimize(Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;Ljava/util/Stack;)Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->elementMatcher:Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    .line 169
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->closedMatcher:Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->ruleStack:Ljava/util/Stack;

    invoke-static {v0, v1}, Lorg/mapsforge/map/rendertheme/rule/RuleOptimizer;->optimize(Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;Ljava/util/Stack;)Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->closedMatcher:Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    .line 170
    return-void
.end method

.method private static getClosedMatcher(Lorg/mapsforge/map/rendertheme/rule/Closed;)Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;
    .locals 3
    .param p0, "closed"    # Lorg/mapsforge/map/rendertheme/rule/Closed;

    .line 44
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder$1;->$SwitchMap$org$mapsforge$map$rendertheme$rule$Closed:[I

    invoke-virtual {p0}, Lorg/mapsforge/map/rendertheme/rule/Closed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown closed value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    return-object v0

    .line 48
    :pswitch_1
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/LinearWayMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/LinearWayMatcher;

    return-object v0

    .line 46
    :pswitch_2
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/ClosedWayMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/ClosedWayMatcher;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getElementMatcher(Lorg/mapsforge/map/rendertheme/rule/Element;)Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;
    .locals 3
    .param p0, "element"    # Lorg/mapsforge/map/rendertheme/rule/Element;

    .line 57
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder$1;->$SwitchMap$org$mapsforge$map$rendertheme$rule$Element:[I

    invoke-virtual {p0}, Lorg/mapsforge/map/rendertheme/rule/Element;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown element value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_0
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    return-object v0

    .line 61
    :pswitch_1
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/ElementWayMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/ElementWayMatcher;

    return-object v0

    .line 59
    :pswitch_2
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/ElementNodeMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/ElementNodeMatcher;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getKeyMatcher(Ljava/util/List;)Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;"
        }
    .end annotation

    .line 70
    .local p0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    return-object v0

    .line 74
    :cond_0
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Rule;->MATCHERS_CACHE_KEY:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    .line 75
    .local v0, "attributeMatcher":Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    if-nez v0, :cond_1

    .line 76
    new-instance v1, Lorg/mapsforge/map/rendertheme/rule/KeyMatcher;

    invoke-direct {v1, p0}, Lorg/mapsforge/map/rendertheme/rule/KeyMatcher;-><init>(Ljava/util/List;)V

    move-object v0, v1

    .line 77
    sget-object v1, Lorg/mapsforge/map/rendertheme/rule/Rule;->MATCHERS_CACHE_KEY:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_1
    return-object v0
.end method

.method private static getValueMatcher(Ljava/util/List;)Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;"
        }
    .end annotation

    .line 83
    .local p0, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    return-object v0

    .line 87
    :cond_0
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Rule;->MATCHERS_CACHE_VALUE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    .line 88
    .local v0, "attributeMatcher":Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    if-nez v0, :cond_1

    .line 89
    new-instance v1, Lorg/mapsforge/map/rendertheme/rule/ValueMatcher;

    invoke-direct {v1, p0}, Lorg/mapsforge/map/rendertheme/rule/ValueMatcher;-><init>(Ljava/util/List;)V

    move-object v0, v1

    .line 90
    sget-object v1, Lorg/mapsforge/map/rendertheme/rule/Rule;->MATCHERS_CACHE_VALUE:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    return-object v0
.end method

.method private validate(Ljava/lang/String;)V
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 173
    const-string v0, "e"

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->element:Lorg/mapsforge/map/rendertheme/rule/Element;

    invoke-static {p1, v0, v1}, Lorg/mapsforge/map/rendertheme/XmlUtils;->checkMandatoryAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string v0, "k"

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->keys:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/mapsforge/map/rendertheme/XmlUtils;->checkMandatoryAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    const-string v0, "v"

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->values:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/mapsforge/map/rendertheme/XmlUtils;->checkMandatoryAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    iget-byte v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->zoomMin:B

    iget-byte v1, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->zoomMax:B

    if-gt v0, v1, :cond_0

    .line 180
    return-void

    .line 178
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'zoom-min\' > \'zoom-max\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->zoomMin:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->zoomMax:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lorg/mapsforge/map/rendertheme/rule/Rule;
    .locals 3

    .line 122
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->valueList:Ljava/util/List;

    const-string v1, "~"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/NegativeMatcher;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->keyList:Ljava/util/List;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->valueList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/map/rendertheme/rule/NegativeMatcher;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 124
    .local v0, "attributeMatcher":Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    new-instance v1, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;

    invoke-direct {v1, p0, v0}, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;-><init>(Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;)V

    return-object v1

    .line 127
    .end local v0    # "attributeMatcher":Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->keyList:Ljava/util/List;

    invoke-static {v0}, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->getKeyMatcher(Ljava/util/List;)Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    move-result-object v0

    .line 128
    .local v0, "keyMatcher":Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->valueList:Ljava/util/List;

    invoke-static {v1}, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->getValueMatcher(Ljava/util/List;)Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    move-result-object v1

    .line 130
    .local v1, "valueMatcher":Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->ruleStack:Ljava/util/Stack;

    invoke-static {v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RuleOptimizer;->optimize(Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    move-result-object v0

    .line 131
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->ruleStack:Ljava/util/Stack;

    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/rule/RuleOptimizer;->optimize(Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    move-result-object v1

    .line 133
    new-instance v2, Lorg/mapsforge/map/rendertheme/rule/PositiveRule;

    invoke-direct {v2, p0, v0, v1}, Lorg/mapsforge/map/rendertheme/rule/PositiveRule;-><init>(Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;)V

    return-object v2
.end method
