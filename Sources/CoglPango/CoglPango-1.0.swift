
extension gboolean {
    private init(_ b: Bool) { self = b ? gboolean(1) : gboolean(0) }
}

func asStringArray(_ param: UnsafePointer<UnsafePointer<CChar>?>) -> [String] {
    var ptr = param
    var rv = [String]()
    while ptr.pointee != nil {
        rv.append(String(cString: ptr.pointee!))
        ptr = ptr.successor()
    }
    return rv
}

func asStringArray<T>(_ param: UnsafePointer<UnsafePointer<CChar>?>, release: ((UnsafePointer<T>?) -> Void)) -> [String] {
    let rv = asStringArray(param)
    param.withMemoryRebound(to: T.self, capacity: rv.count) { release(UnsafePointer<T>($0)) }
    return rv
}
import CGLib
import CPango
import CCogl
import CCoglPango
import GLib
import GLibObject
import Pango
import Cogl

public typealias FontMap = CoglPangoFontMap






/// Metatype/GType declaration for Renderer
public extension RendererClassRef {
    
    /// This getter returns the GLib type identifier registered for `Renderer`
    static var metatypeReference: GType { cogl_pango_renderer_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<CoglPangoRendererClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: CoglPangoRendererClass.self) }
    
    static var metatype: CoglPangoRendererClass? { metatypePointer?.pointee } 
    
    static var wrapper: RendererClassRef? { RendererClassRef(metatypePointer) }
    
    
}

// MARK: - RendererClass Record

/// The `RendererClassProtocol` protocol exposes the methods and properties of an underlying `CoglPangoRendererClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RendererClass`.
/// Alternatively, use `RendererClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RendererClassProtocol {
        /// Untyped pointer to the underlying `CoglPangoRendererClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `CoglPangoRendererClass` instance.
    var _ptr: UnsafeMutablePointer<CoglPangoRendererClass>! { get }

    /// Required Initialiser for types conforming to `RendererClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `RendererClassRef` type acts as a lightweight Swift reference to an underlying `CoglPangoRendererClass` instance.
/// It exposes methods that can operate on this data type through `RendererClassProtocol` conformance.
/// Use `RendererClassRef` only as an `unowned` reference to an existing `CoglPangoRendererClass` instance.
///

public struct RendererClassRef: RendererClassProtocol {
        /// Untyped pointer to the underlying `CoglPangoRendererClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RendererClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<CoglPangoRendererClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<CoglPangoRendererClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<CoglPangoRendererClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<CoglPangoRendererClass>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RendererClassProtocol`
    @inlinable init<T: RendererClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RendererClass Record: RendererClassProtocol extension (methods and fields)
public extension RendererClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglPangoRendererClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<CoglPangoRendererClass>! { return ptr?.assumingMemoryBound(to: CoglPangoRendererClass.self) }



}


// MARK: - Renderer Class

/// The `RendererProtocol` protocol exposes the methods and properties of an underlying `CoglPangoRenderer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Renderer`.
/// Alternatively, use `RendererRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RendererProtocol: Pango.RendererProtocol {
        /// Untyped pointer to the underlying `CoglPangoRenderer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `CoglPangoRenderer` instance.
    var renderer_ptr: UnsafeMutablePointer<CoglPangoRenderer>! { get }

    /// Required Initialiser for types conforming to `RendererProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `RendererRef` type acts as a lightweight Swift reference to an underlying `CoglPangoRenderer` instance.
/// It exposes methods that can operate on this data type through `RendererProtocol` conformance.
/// Use `RendererRef` only as an `unowned` reference to an existing `CoglPangoRenderer` instance.
///

public struct RendererRef: RendererProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `CoglPangoRenderer` instance.
    /// For type-safe access, use the generated, typed pointer `renderer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RendererRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<CoglPangoRenderer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<CoglPangoRenderer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<CoglPangoRenderer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<CoglPangoRenderer>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RendererProtocol`
    @inlinable init<T: RendererProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RendererProtocol>(_ other: T) -> RendererRef { RendererRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Renderer` type acts as a reference-counted owner of an underlying `CoglPangoRenderer` instance.
/// It provides the methods that can operate on this data type through `RendererProtocol` conformance.
/// Use `Renderer` as a strong reference or owner of a `CoglPangoRenderer` instance.
///

open class Renderer: Pango.Renderer, RendererProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<CoglPangoRenderer>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<CoglPangoRenderer>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<CoglPangoRenderer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<CoglPangoRenderer>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `CoglPangoRenderer`.
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<CoglPangoRenderer>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RendererProtocol`
    /// Will retain `CoglPangoRenderer`.
    /// - Parameter other: an instance of a related type that implements `RendererProtocol`
    @inlinable public init<T: RendererProtocol>(_ other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum RendererPropertyName: String, PropertyNameProtocol {
    case context = "context"
}

public extension RendererProtocol {
    /// Bind a `RendererPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RendererPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a Renderer property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RendererPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Renderer property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RendererPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum RendererSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyContext = "notify::context"
}

// MARK: Renderer has no signals
// MARK: Renderer Class: RendererProtocol extension (methods and fields)
public extension RendererProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglPangoRenderer` instance.
    @inlinable var renderer_ptr: UnsafeMutablePointer<CoglPangoRenderer>! { return ptr?.assumingMemoryBound(to: CoglPangoRenderer.self) }



}


/// This updates any internal glyph cache textures as necessary to be
/// able to render the given `layout`.
/// 
/// This api should be used to avoid mid-scene modifications of
/// glyph-cache textures which can lead to undefined rendering results.
@inlinable public func ensureGlyphCacheFor<LayoutT: Pango.LayoutProtocol>(layout: LayoutT) {
    cogl_pango_ensure_glyph_cache_for_layout(layout.layout_ptr)

}




/// Clears the glyph cache for `font_map`.
@inlinable public func fontMapClearGlyphCache<FontMapT: FontMapProtocol>(fontMap: FontMapT) {
    cogl_pango_font_map_clear_glyph_cache(fontMap.font_map_ptr)

}




/// Create a `PangoContext` for the given `font_map`.
@inlinable public func fontMapCreateContext<FontMapT: FontMapProtocol>(fontMap: FontMapT) -> Pango.ContextRef! {
    guard let rv = Pango.ContextRef(cogl_pango_font_map_create_context(fontMap.font_map_ptr)) else { return nil }
    return rv
}




/// Retrieves the `CoglPangoRenderer` for the passed `font_map`.
@inlinable public func fontMapGetRenderer<FontMapT: FontMapProtocol>(fontMap: FontMapT) -> Pango.RendererRef! {
    guard let rv = Pango.RendererRef(cogl_pango_font_map_get_renderer(fontMap.font_map_ptr)) else { return nil }
    return rv
}




/// Retrieves whether the `CoglPangoRenderer` used by `font_map` will use
/// mipmapping when rendering the glyphs.
@inlinable public func fontMapGetUseMipmapping<FontMapT: FontMapProtocol>(fontMap: FontMapT) -> CoglBool {
    let rv = cogl_pango_font_map_get_use_mipmapping(fontMap.font_map_ptr)
    return rv
}




/// Creates a new font map.
@inlinable public func fontMapNew() -> Pango.FontMapRef! {
    guard let rv = Pango.FontMapRef(cogl_pango_font_map_new()) else { return nil }
    return rv
}




/// Sets the resolution for the `font_map`. This is a scale factor
/// between points specified in a `PangoFontDescription` and Cogl units.
/// The default value is `96`, meaning that a 10 point font will be 13
/// units high. (10 * 96. / 72. = 13.3).
@inlinable public func fontMapSetResolution<FontMapT: FontMapProtocol>(fontMap: FontMapT, dpi: CDouble) {
    cogl_pango_font_map_set_resolution(fontMap.font_map_ptr, dpi)

}




/// Sets whether the renderer for the passed font map should use
/// mipmapping when rendering a `PangoLayout`.
@inlinable public func fontMapSetUseMipmapping<FontMapT: FontMapProtocol>(fontMap: FontMapT, value: CoglBool) {
    cogl_pango_font_map_set_use_mipmapping(fontMap.font_map_ptr, value)

}




/// Draws a solidly coloured `layout` on the given `framebuffer` at (`x`,
/// `y`) within the `framebuffer`&lt;!-- --&gt;'s current model-view coordinate
/// space.
///
/// **render_layout is deprecated:**
/// Use cogl_pango_show_layout() instead
@available(*, deprecated) @inlinable public func render<ColorT: Cogl.ColorProtocol, LayoutT: Pango.LayoutProtocol>(layout: LayoutT, x: Int, y: Int, color: ColorT, flags: Int) {
    cogl_pango_render_layout(layout.layout_ptr, gint(x), gint(y), color.color_ptr, gint(flags))

}




/// Renders `line` at the given coordinates using the given color.
///
/// **render_layout_line is deprecated:**
/// Use cogl_pango_show_layout() instead
@available(*, deprecated) @inlinable public func renderLayout<ColorT: Cogl.ColorProtocol, LayoutLineT: Pango.LayoutLineProtocol>(line: LayoutLineT, x: Int, y: Int, color: ColorT) {
    cogl_pango_render_layout_line(line.layout_line_ptr, gint(x), gint(y), color.color_ptr)

}




/// Draws a solidly coloured `layout` on the given `framebuffer` at (`x`,
/// `y`) within the `framebuffer`&lt;!-- --&gt;'s current model-view coordinate
/// space.
///
/// **render_layout_subpixel is deprecated:**
/// Use cogl_pango_show_layout() instead
@available(*, deprecated) @inlinable public func renderLayoutSubpixel<ColorT: Cogl.ColorProtocol, LayoutT: Pango.LayoutProtocol>(layout: LayoutT, x: Int, y: Int, color: ColorT, flags: Int) {
    cogl_pango_render_layout_subpixel(layout.layout_ptr, gint(x), gint(y), color.color_ptr, gint(flags))

}




/// Draws a solidly coloured `layout` on the given `framebuffer` at (`x`,
/// `y`) within the `framebuffer`&lt;!-- --&gt;'s current model-view coordinate
/// space.
@inlinable public func showLayout<ColorT: Cogl.ColorProtocol, LayoutT: Pango.LayoutProtocol>(framebuffer: UnsafeMutablePointer<CoglFramebuffer>!, layout: LayoutT, x: CFloat, y: CFloat, color: ColorT) {
    cogl_pango_show_layout(framebuffer, layout.layout_ptr, x, y, color.color_ptr)

}




/// Draws a solidly coloured `line` on the given `framebuffer` at (`x`,
/// `y`) within the `framebuffer`&lt;!-- --&gt;'s current model-view coordinate
/// space.
@inlinable public func showLayoutLine<ColorT: Cogl.ColorProtocol, LayoutLineT: Pango.LayoutLineProtocol>(framebuffer: UnsafeMutablePointer<CoglFramebuffer>!, line: LayoutLineT, x: CFloat, y: CFloat, color: ColorT) {
    cogl_pango_show_layout_line(framebuffer, line.layout_line_ptr, x, y, color.color_ptr)

}



