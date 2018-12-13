//
//  CoglPango.swift
//  Cogl
//
//  Created by Rene Hexel on 25/9/16.
//
//
import CGLib
import CPango
import CCogl
import CCoglPango
import GLib
import GLibObject
import Pango

/// This updates any internal glyph cache textures as necessary to be
/// able to render the given @layout.
///
/// This api should be used to avoid mid-scene modifications of
/// glyph-cache textures which can lead to undefined rendering results.
public extension Layout {
    public func ensureGlyphCache() {
        ensureGlyphCacheFor(layout: ptr.withMemoryRebound(to: PangoLayout.self, capacity: 1) { $0 })
    }
}
