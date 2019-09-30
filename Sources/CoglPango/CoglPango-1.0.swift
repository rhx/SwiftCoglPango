func cast(_ param: UnsafeRawPointer) -> OpaquePointer! {
    return OpaquePointer(param)
}

func cast<S, T>(_ param: UnsafeMutablePointer<S>?) -> UnsafeMutablePointer<T>! {
    return param?.withMemoryRebound(to: T.self, capacity: 1) { $0 }
}

func cast<S, T>(_ param: UnsafeMutablePointer<S>?) -> UnsafePointer<T>! {
    return param?.withMemoryRebound(to: T.self, capacity: 1) { UnsafePointer<T>($0) }
}

func cast<S, T>(_ param: UnsafePointer<S>?) -> UnsafePointer<T>! {
    return param?.withMemoryRebound(to: T.self, capacity: 1) { UnsafePointer<T>($0) }
}

func cast<T>(_ param: OpaquePointer?) -> UnsafeMutablePointer<T>! {
    return UnsafeMutablePointer<T>(param)
}

func cast<T>(_ param: OpaquePointer?) -> UnsafePointer<T>! {
    return UnsafePointer<T>(param)
}

func cast(_ param: OpaquePointer?) -> UnsafeMutableRawPointer! {
    return UnsafeMutableRawPointer(param)
}

func cast(_ param: UnsafeRawPointer?) -> UnsafeMutableRawPointer! {
    return UnsafeMutableRawPointer(mutating: param)
}

func cast<T>(_ param: UnsafePointer<T>?) -> OpaquePointer! {
    return OpaquePointer(param)
}

func cast<T>(_ param: UnsafeMutablePointer<T>?) -> OpaquePointer! {
    return OpaquePointer(param)
}

func cast<T>(_ param: UnsafeRawPointer?) -> UnsafeMutablePointer<T>! {
    return UnsafeMutableRawPointer(mutating: param)?.assumingMemoryBound(to: T.self)
}

func cast<T>(_ param: UnsafeMutableRawPointer?) -> UnsafeMutablePointer<T>! {
    return param?.assumingMemoryBound(to: T.self)
}

func cast<T>(_ param: T) -> T { return param }

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





// MARK: - RendererClass Record

/// The `RendererClassProtocol` protocol exposes the methods and properties of an underlying `CoglPangoRendererClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RendererClass`.
/// Alternatively, use `RendererClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RendererClassProtocol {
    /// Untyped pointer to the underlying `CoglPangoRendererClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglPangoRendererClass` instance.
    var _ptr: UnsafeMutablePointer<CoglPangoRendererClass> { get }
}

/// The `RendererClassRef` type acts as a lightweight Swift reference to an underlying `CoglPangoRendererClass` instance.
/// It exposes methods that can operate on this data type through `RendererClassProtocol` conformance.
/// Use `RendererClassRef` only as an `unowned` reference to an existing `CoglPangoRendererClass` instance.
///

public struct RendererClassRef: RendererClassProtocol {
    /// Untyped pointer to the underlying `CoglPangoRendererClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RendererClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglPangoRendererClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RendererClassProtocol`
    init<T: RendererClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RendererClass` type acts as an owner of an underlying `CoglPangoRendererClass` instance.
/// It provides the methods that can operate on this data type through `RendererClassProtocol` conformance.
/// Use `RendererClass` as a strong reference or owner of a `CoglPangoRendererClass` instance.
///

open class RendererClass: RendererClassProtocol {
    /// Untyped pointer to the underlying `CoglPangoRendererClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RendererClass` instance.
    public init(_ op: UnsafeMutablePointer<CoglPangoRendererClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RendererClassProtocol`
    /// `CoglPangoRendererClass` does not allow reference counting.
    public convenience init<T: RendererClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for CoglPangoRendererClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`CoglPangoRendererClass`.
    deinit {
        // no reference counting for CoglPangoRendererClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: CoglPangoRendererClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: CoglPangoRendererClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: CoglPangoRendererClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<CoglPangoRendererClass>(opaquePointer))
    }



}

// MARK: - no RendererClass properties

// MARK: - no signals


public extension RendererClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglPangoRendererClass` instance.
    var _ptr: UnsafeMutablePointer<CoglPangoRendererClass> { return ptr.assumingMemoryBound(to: CoglPangoRendererClass.self) }

}


// MARK: - Renderer Class

/// The `RendererProtocol` protocol exposes the methods and properties of an underlying `CoglPangoRenderer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Renderer`.
/// Alternatively, use `RendererRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RendererProtocol {
    /// Untyped pointer to the underlying `CoglPangoRenderer` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `CoglPangoRenderer` instance.
    var renderer_ptr: UnsafeMutablePointer<CoglPangoRenderer> { get }
}

/// The `RendererRef` type acts as a lightweight Swift reference to an underlying `CoglPangoRenderer` instance.
/// It exposes methods that can operate on this data type through `RendererProtocol` conformance.
/// Use `RendererRef` only as an `unowned` reference to an existing `CoglPangoRenderer` instance.
///

public struct RendererRef: RendererProtocol {
    /// Untyped pointer to the underlying `CoglPangoRenderer` instance.
    /// For type-safe access, use the generated, typed pointer `renderer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RendererRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<CoglPangoRenderer>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RendererProtocol`
    init<T: RendererProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Renderer` type acts as an owner of an underlying `CoglPangoRenderer` instance.
/// It provides the methods that can operate on this data type through `RendererProtocol` conformance.
/// Use `Renderer` as a strong reference or owner of a `CoglPangoRenderer` instance.
///

open class Renderer: RendererProtocol {
    /// Untyped pointer to the underlying `CoglPangoRenderer` instance.
    /// For type-safe access, use the generated, typed pointer `renderer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Renderer` instance.
    public init(_ op: UnsafeMutablePointer<CoglPangoRenderer>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RendererProtocol`
    /// `CoglPangoRenderer` does not allow reference counting.
    public convenience init<T: RendererProtocol>(_ other: T) {
        self.init(cast(other.renderer_ptr))
        // no reference counting for CoglPangoRenderer, cannot ref(cast(renderer_ptr))
    }

    /// Do-nothing destructor for`CoglPangoRenderer`.
    deinit {
        // no reference counting for CoglPangoRenderer, cannot unref(cast(renderer_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: CoglPangoRenderer.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: CoglPangoRenderer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: CoglPangoRenderer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<CoglPangoRenderer>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: RendererPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(renderer_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum RendererSignalName: String, SignalNameProtocol {

    case notifyContext = "notify::context"
}

public extension RendererProtocol {
    /// Connect a `RendererSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RendererSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(renderer_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RendererProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `CoglPangoRenderer` instance.
    var renderer_ptr: UnsafeMutablePointer<CoglPangoRenderer> { return ptr.assumingMemoryBound(to: CoglPangoRenderer.self) }

}


/// This updates any internal glyph cache textures as necessary to be
/// able to render the given `layout`.
/// 
/// This api should be used to avoid mid-scene modifications of
/// glyph-cache textures which can lead to undefined rendering results.
public func ensureGlyphCacheFor(layout: UnsafeMutablePointer<PangoLayout>) {
    cogl_pango_ensure_glyph_cache_for_layout(cast(layout))

}




/// Clears the glyph cache for `font_map`.
public func fontMapClearGlyphCache(fontMap font_map: UnsafeMutablePointer<CoglPangoFontMap>) {
    cogl_pango_font_map_clear_glyph_cache(cast(font_map))

}




/// Create a `PangoContext` for the given `font_map`.
public func fontMapCreateContext(fontMap font_map: UnsafeMutablePointer<CoglPangoFontMap>) -> UnsafeMutablePointer<PangoContext>! {
    let rv = cogl_pango_font_map_create_context(cast(font_map))
    return cast(rv)
}




/// Retrieves the `CoglPangoRenderer` for the passed `font_map`.
public func fontMapGetRenderer(fontMap font_map: UnsafeMutablePointer<CoglPangoFontMap>) -> UnsafeMutablePointer<PangoRenderer>! {
    let rv = cogl_pango_font_map_get_renderer(cast(font_map))
    return cast(rv)
}




/// Retrieves whether the `CoglPangoRenderer` used by `font_map` will use
/// mipmapping when rendering the glyphs.
public func fontMapGetUseMipmapping(fontMap font_map: UnsafeMutablePointer<CoglPangoFontMap>) -> CoglBool {
    let rv = cogl_pango_font_map_get_use_mipmapping(cast(font_map))
    return rv
}




/// Creates a new font map.
public func fontMapNew() -> UnsafeMutablePointer<PangoFontMap>! {
    let rv = cogl_pango_font_map_new()
    return cast(rv)
}




/// Sets the resolution for the `font_map`. This is a scale factor
/// between points specified in a `PangoFontDescription` and Cogl units.
/// The default value is `96`, meaning that a 10 point font will be 13
/// units high. (10 * 96. / 72. = 13.3).
public func fontMapSetResolution(fontMap font_map: UnsafeMutablePointer<CoglPangoFontMap>, dpi: gdouble) {
    cogl_pango_font_map_set_resolution(cast(font_map), dpi)

}




/// Sets whether the renderer for the passed font map should use
/// mipmapping when rendering a `PangoLayout`.
public func fontMapSetUseMipmapping(fontMap font_map: UnsafeMutablePointer<CoglPangoFontMap>, value: Bool) {
    cogl_pango_font_map_set_use_mipmapping(cast(font_map), value ? 1 : 0)

}




/// Draws a solidly coloured `layout` on the given `framebuffer` at (`x`,
/// `y`) within the `framebuffer`<!-- -->'s current model-view coordinate
/// space.
///
/// **render_layout is deprecated:**
/// Use cogl_pango_show_layout() instead
@available(*, deprecated) public func render(layout: UnsafeMutablePointer<PangoLayout>, x: CInt, y: CInt, color: UnsafePointer<CoglColor>, flags: CInt) {
    cogl_pango_render_layout(cast(layout), x, y, cast(color), flags)

}




/// Renders `line` at the given coordinates using the given color.
///
/// **render_layout_line is deprecated:**
/// Use cogl_pango_show_layout() instead
@available(*, deprecated) public func renderLayout(line: UnsafeMutablePointer<PangoLayoutLine>, x: CInt, y: CInt, color: UnsafePointer<CoglColor>) {
    cogl_pango_render_layout_line(cast(line), x, y, cast(color))

}




/// Draws a solidly coloured `layout` on the given `framebuffer` at (`x`,
/// `y`) within the `framebuffer`<!-- -->'s current model-view coordinate
/// space.
///
/// **render_layout_subpixel is deprecated:**
/// Use cogl_pango_show_layout() instead
@available(*, deprecated) public func renderLayoutSubpixel(layout: UnsafeMutablePointer<PangoLayout>, x: CInt, y: CInt, color: UnsafePointer<CoglColor>, flags: CInt) {
    cogl_pango_render_layout_subpixel(cast(layout), x, y, cast(color), flags)

}




/// Draws a solidly coloured `layout` on the given `framebuffer` at (`x`,
/// `y`) within the `framebuffer`<!-- -->'s current model-view coordinate
/// space.
public func showLayout(framebuffer: UnsafeMutablePointer<CoglFramebuffer>, layout: UnsafeMutablePointer<PangoLayout>, x: gfloat, y: gfloat, color: UnsafePointer<CoglColor>) {
    cogl_pango_show_layout(cast(framebuffer), cast(layout), x, y, cast(color))

}




/// Draws a solidly coloured `line` on the given `framebuffer` at (`x`,
/// `y`) within the `framebuffer`<!-- -->'s current model-view coordinate
/// space.
public func showLayoutLine(framebuffer: UnsafeMutablePointer<CoglFramebuffer>, line: UnsafeMutablePointer<PangoLayoutLine>, x: gfloat, y: gfloat, color: UnsafePointer<CoglColor>) {
    cogl_pango_show_layout_line(cast(framebuffer), cast(line), x, y, cast(color))

}


