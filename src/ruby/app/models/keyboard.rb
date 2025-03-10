class Keyboard
  GPIO_IN          = 0b000
  GPIO_IN_PULLUP   = 0b010
  GPIO_IN_PULLDOWN = 0b110
  GPIO_OUT         = 0b001
  GPIO_OUT_LO      = 0b011
  GPIO_OUT_HI      = 0b101

  MOD_KEYCODE = {
    KC_LCTL: 0b00000001,
    KC_LSFT: 0b00000010,
    KC_LALT: 0b00000100,
    KC_LGUI: 0b00001000,
    KC_RCTL: 0b00010000,
    KC_RSFT: 0b00100000,
    KC_RALT: 0b01000000,
    KC_RGUI: 0b10000000
  }

  # Due to PicoRuby's limitation,
  # a big array can't be created at once
  KEYCODE = [
    :KC_NO,               # 0x00
    :KC_ROLL_OVER,
    :KC_POST_FAIL,
    :KC_UNDEFINED,
    :KC_A,
    :KC_B,
    :KC_C,
    :KC_D,
    :KC_E,
    :KC_F,
    :KC_G,
    :KC_H,
    :KC_I,
    :KC_J,
    :KC_K,
    :KC_L,
    :KC_M,                # 0x10
    :KC_N,
    :KC_O,
    :KC_P,
    :KC_Q,
    :KC_R,
    :KC_S,
    :KC_T,
    :KC_U,
    :KC_V,
    :KC_W,
    :KC_X,
    :KC_Y,
    :KC_Z,
    :KC_1,
    :KC_2,
    :KC_3,                # 0x20
    :KC_4,
    :KC_5,
    :KC_6,
    :KC_7,
    :KC_8,
    :KC_9,
    :KC_0,
    :KC_ENTER,
    :KC_ESCAPE,
    :KC_BSPACE,
    :KC_TAB,
    :KC_SPACE,
    :KC_MINUS,
    :KC_EQUAL,
    :KC_LBRACKET,
  ] + [
    :KC_RBRACKET,         # 0x30
    :KC_BSLASH,
    :KC_NONUS_HASH,
    :KC_SCOLON,
    :KC_QUOTE,
    :KC_GRAVE,
    :KC_COMMA,
    :KC_DOT,
    :KC_SLASH,
    :KC_CAPSLOCK,
    :KC_F1,
    :KC_F2,
    :KC_F3,
    :KC_F4,
    :KC_F5,
    :KC_F6,
    :KC_F7,               # 0x40
    :KC_F8,
    :KC_F9,
    :KC_F10,
    :KC_F11,
    :KC_F12,
    :KC_PSCREEN,
    :KC_SCROLLLOCK,
    :KC_PAUSE,
    :KC_INSERT,
    :KC_HOME,
    :KC_PGUP,
    :KC_DELETE,
    :KC_END,
    :KC_PGDOWN,
    :KC_RIGHT,
    :KC_LEFT,             # 0x50
    :KC_DOWN,
    :KC_UP,
    :KC_NUMLOCK,
    :KC_KP_SLASH,
    :KC_KP_ASTERISK,
    :KC_KP_MINUS,
    :KC_KP_PLUS,
    :KC_KP_ENTER,
    :KC_KP_1,
    :KC_KP_2,
    :KC_KP_3,
    :KC_KP_4,
    :KC_KP_5,
    :KC_KP_6,
    :KC_KP_7,
  ] + [
    :KC_KP_8,             # 0x60
    :KC_KP_9,
    :KC_KP_0,
    :KC_KP_DOT,
    :KC_NONUS_BSLASH,
    :KC_APPLICATION,
    :KC_POWER,
    :KC_KP_EQUAL,
    :KC_F13,
    :KC_F14,
    :KC_F15,
    :KC_F16,
    :KC_F17,
    :KC_F18,
    :KC_F19,
    :KC_F20,
    :KC_F21,              # 0x70
    :KC_F22,
    :KC_F23,
    :KC_F24,
    :KC_EXECUTE,
    :KC_HELP,
    :KC_MENU,
    :KC_SELECT,
    :KC_STOP,
    :KC_AGAIN,
    :KC_UNDO,
    :KC_CUT,
    :KC_COPY,
    :KC_PASTE,
    :KC_FIND,
    :KC_MUTE,
    :KC_VOLUP,                 # 0x80
    :KC_VOLDOWN,
    :KC_,
    :KC_,
    :KC_,
    :KC_,
    :KC_,
    :KC_INT1,
    :KC_INT2,
    :KC_INT3,
    :KC_INT4,
    :KC_INT5,
    :KC_INT6,
    :KC_INT7,
    :KC_INT8,
    :KC_INT9,
  ] + [
    :KC_LANG1,            # 0x90
    :KC_LANG2,
    :KC_LANG3,
    :KC_LANG4,
    :KC_LANG5,
    :KC_LANG6,
    :KC_LANG7,
    :KC_LANG8,
    :KC_LANG9,
    :KC_ALT_ERASE,
    :KC_SYSREQ,
    :KC_CANCEL,
    :KC_CLEAR,
    :KC_PRIOR,
    :KC_RETURN,
    :KC_SEPARATOR,
    :KC_OUT,              # 0xA0
    :KC_OPER,
    :KC_CLEAR_AGAIN,
    :KC_CRSEL,
    :KC_EXSEL,
  ]

  # Keycodes with SHIFT modifier
  KEYCODE_SFT = {
    KC_EXLM:           0x1e,
    KC_AT:             0x1f,
    KC_HASH:           0x20,
    KC_DLR:            0x21,
    KC_PERC:           0x22,
    KC_CIRC:           0x23,
    KC_AMPR:           0x24,
    KC_ASTER:          0x25,
    KC_LPRN:           0x26,
    KC_RPRN:           0x27,
    KC_UNDS:           0x2d,
    KC_PLUS:           0x2e,
    KC_LCBR:           0x2f,
    KC_RCBR:           0x30,
    KC_PIPE:           0x31,
  #  KC_TILD:           0x32,
    KC_COLON:          0x33,
    KC_DQUO:           0x34,
    KC_TILD:           0x35,
    KC_LABK:           0x36,
    KC_RABK:           0x37,
    KC_QUES:           0x38,
  }

  KEYCODE_RGB = {
    RGB_TOG:          0x101,
    RGB_MODE_FORWARD: 0x102,
    RGB_MOD:          0x103,
    RGB_MODE_REVERSE: 0x104,
    RGB_RMOD:         0x105,
    RGB_HUI:          0x106,
    RGB_HUD:          0x107,
    RGB_SAI:          0x108,
    RGB_SAD:          0x109,
    RGB_VAI:          0x10a,
    RGB_VAD:          0x10b,
    RGB_SPI:          0x10c,
    RGB_SPD:          0x10d
  }

  letter = [
    nil,nil,nil,nil,
    'a', # 0x04
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm', # 0x10
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
    '1',
    '2',
    '3', # 0x20
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
    :ENTER,
    :ESCAPE,
    :BSPACE,
    :TAB,
    ' ',
    '-',
    '=',
    '[',
    ']', # 0x30
    "\\",
    nil, # ???
    ';',
    "'",
    '`',
    ',',
    '.',
    '/'
  ]
  letter[74] = :HOME
  letter += [
    :PGUP,
    :DELETE,
    :END,
    :PGDOWN,
    :RIGHT,
    :LEFT,   # 0x50
    :DOWN,
    :UP    # 82
  ]
  LETTER = letter + [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M', # 0x10
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
    '!',
    '@',
    '#',
    '$',
    '%',
    '^',
    '&',
    '*',
    '(',
    ')',
    '_',
    '+',
    '{',
    '}',
    '|',
    nil, # KC_TILD
    ':',
    '"',
    '~',
    '<',
    '>',
    '?'
  ]
  KC_ALIASES = {
    KC_ENT: :KC_ENTER,
    KC_ESC: :KC_ESCAPE,
    KC_BSPC: :KC_BSPACE,
    KC_SPC: :KC_SPACE,
    KC_MINS: :KC_MINUS,
    KC_EQL: :KC_EQUAL,
    KC_LBRC: :KC_LBRACKET,
    KC_RBRC: :KC_RBRACKET,
    KC_BSLS: :KC_BSLASH,
    # KC_NUHS: :KC_NONUS_HASH,
    # KC_SCLN: :KC_SCOLON,
    KC_QUOT: :KC_QUOTE,
    KC_GRV: :KC_GRAVE,
    KC_ZKHK: :KC_GRAVE,
    KC_COMM: :KC_COMMA,
    KC_SLSH: :KC_SLASH,
    # KC_NUBS: :KC_NONUS_BSLASH,
    # KC_CLCK: :KC_CAPSLOCK,
    KC_CAPS: :KC_CAPSLOCK,
    # KC_SLCK: :KC_SCROLLLOCK,
    # KC_BRMD: :KC_SCROLLLOCK,
    # KC_NLCK: :KC_NUMLOCK,
    # KC_LCTRL: :KC_LCTL,
    # KC_LSHIFT: :KC_LSFT,
    # KC_LOPT: :KC_LALT,
    # KC_LCMD: :KC_LGUI,
    # KC_LWIN: :KC_LGUI,
    # KC_RCTRL: :KC_RCTL,
    # KC_RSHIFT: :KC_RSFT,
    # KC_ROPT: :KC_RALT,
    # KC_ALGR: :KC_RALT,
    # KC_RCMD: :KC_RGUI,
    # KC_RWIN: :KC_RGUI,
    KC_KANA: :KC_INT2,
    KC_HENK: :KC_INT4,
    KC_MHEN: :KC_INT5,
    KC_HAEN: :KC_LANG1,
    KC_HANJ: :KC_LANG2,
    # KC_PSCR: :KC_PSCREEN,
    # KC_PAUS: :KC_PAUSE,
    # KC_BRK: :KC_PAUSE,
    # KC_BRMU: :KC_PAUSE,
    KC_INS: :KC_INSERT,
    KC_DEL: :KC_DELETE,
    KC_PGDN: :KC_PGDOWN,
    KC_RGHT: :KC_RIGHT,
    # KC_APP: :KC_APPLICATION,
    # KC_EXEC: :KC_EXECUTE,
    # KC_SLCT: :KC_SELECT,
    # KC_AGIN: :KC_AGAIN,
    # KC_PSTE: :KC_PASTE,
    # KC_ERAS: :KC_ALT_ERASE,
    # KC_CLR: :KC_CLEAR,
    # KC_PSLS: :KC_KP_SLASH,
    # KC_PAST: :KC_KP_ASTERISK,
    # KC_PMNS: :KC_KP_MINUS,
    # KC_PPLS: :KC_KP_PLUS,
    # KC_PENT: :KC_KP_ENTER,
    # KC_P1: :KC_KP_1,
    # KC_P2: :KC_KP_2,
    # KC_P3: :KC_KP_3,
    # KC_P4: :KC_KP_4,
    # KC_P5: :KC_KP_5,
    # KC_P6: :KC_KP_6,
    # KC_P7: :KC_KP_7,
    # KC_P8: :KC_KP_8,
    # KC_P9: :KC_KP_9,
    # KC_P0: :KC_KP_0,
    # KC_PDOT: :KC_KP_DOT,
    # KC_PEQL: :KC_KP_EQUAL,
    XXXXXXX: :KC_NO,
  }
  letter = nil
end

#
# Keyboard class have to be defined twice to avoid "too big operand" error of mrbc
# It seems `b` operand of OP_LOADSYM will be more than 0xFFFF if the class is united
#

class Keyboard

  STANDARD_SPLIT = :standard_split
  RIGHT_SIDE_FLIPPED_SPLIT = :right_side_flipped_split

  def initialize
    puts "Initializing Keyboard."
    sleep_ms 500
    # mruby/c VM doesn't work with a CONSTANT to make another CONSTANT
    # steep doesn't allow dynamic assignment of CONSTANT
    @SHIFT_LETTER_THRESHOLD_A    = LETTER.index('A').to_i
    @SHIFT_LETTER_OFFSET_A       = @SHIFT_LETTER_THRESHOLD_A - KEYCODE.index(:KC_A).to_i
    @SHIFT_LETTER_THRESHOLD_UNDS = LETTER.index('_').to_i
    @SHIFT_LETTER_OFFSET_UNDS    = @SHIFT_LETTER_THRESHOLD_UNDS - KEYCODE_SFT[:KC_UNDS]
    @before_filters = Array.new
    @keymaps = Hash.new
    @composite_keys = Array.new
    @mode_keys = Array.new
    @switches = Array.new
    @layer_names = Array.new
    @layer = :default
    @split = false
    @split_style = STANDARD_SPLIT
    @anchor = true
    @anchor_left = true # so-called "master left"
    @uart_pin = 1
    $rgb = nil
    @encoders = Array.new
    @partner_encoders = Array.new
    @macro_keycodes = Array.new
    @buffer = Buffer.new("picoirb")
    @scan_mode = :matrix
    @skip_positions = Array.new
    @layer_changed_delay = 20
  end

  attr_accessor :split, :uart_pin, :layer_changed_delay
  attr_reader :layer, :split_style

  # TODO: OLED, SDCard
  def append(feature)
    case feature.class
    when RGB
      # @type var feature: RGB
      $rgb = feature
      $rgb.anchor = @anchor
    when RotaryEncoder
      # @type var feature: RotaryEncoder
      if @split
        feature.create_keycodes(@partner_encoders.size)
        if @anchor_left
          if @anchor == feature.left? # XNOR
            feature.init_pins
            @encoders << feature
          end
        else
          if @anchor != feature.left? #XOR
            feature.init_pins
            @encoders << feature
          end
        end
        if @anchor && (@anchor_left != feature.left?)
          @partner_encoders << feature
        end
      else
        feature.init_pins
        @encoders << feature
      end
    end
  end

  # val should be treated as `:left` if it's anything other than `:right`
  def set_anchor(val)
    @anchor_left = false if val == :right
  end

  def split_style=(style)
    case style
    when STANDARD_SPLIT, RIGHT_SIDE_FLIPPED_SPLIT
      @split_style = style
    else
      # NOTE: fall back
      @split_style = STANDARD_SPLIT
    end
  end

  def set_scan_mode(mode)
    case mode
    when :matrix, :direct
      @scan_mode = mode
    else
      puts 'Scan mode only support :matrix and :direct. (default: :matrix)'
    end
  end

  def init_uart
    return unless @split
    print "Configured as a split-type"
    @anchor = tud_mounted?
    if @anchor
      puts " Anchor"
      sleep_ms 500
      uart_anchor_init(@uart_pin)
    else
      puts " Partner"
      uart_partner_init(@uart_pin)
    end
    sleep_ms 500
  end

  def init_matrix_pins(matrix)
    puts "Initializing GPIO."
    sleep_ms 500
    init_uart
    @cols_size = 0
    @matrix = Hash.new
    matrix.each do |cols|
      @cols_size = [cols.size, @cols_size].max.to_i
      cols.each do |cell|
        if cell.is_a?(Array)
          @matrix[cell[0]] = Hash.new unless @matrix[cell[0]]
        end
      end
    end
    matrix.each_with_index do |rows, row_index|
      rows.each_with_index do |cell, col_index|
        if cell.is_a?(Array)
          @matrix[cell[0]][cell[1]] = [row_index, col_index]
          gpio_init(cell[0])
          gpio_set_dir(cell[0], GPIO_IN_PULLUP)
          gpio_init(cell[1])
          gpio_set_dir(cell[1], GPIO_IN_PULLUP)
        else # should be nil
          @skip_positions << [row_index, col_index]
        end
      end
    end
    @offset_a = (@cols_size / 2.0).ceil_to_i
    @offset_b = @cols_size * 2 - @offset_a - 1
  end

  def init_pins(rows, cols)
    matrix = Array.new
    rows.each do |row|
      line = Array.new
      cols.each do |col|
        line << [row, col]
      end
      matrix << line
    end
    init_matrix_pins matrix
  end

  def init_direct_pins(pins)
    set_scan_mode :direct
    pins.each do |pin|
      gpio_init(pin)
      gpio_set_dir(pin, GPIO_IN_PULLUP)
    end
    @direct_pins = pins
  end

  def skip_position?(row, col)
    col2 = if col < @cols_size
      col
    else
      if @split_style == RIGHT_SIDE_FLIPPED_SPLIT
        col - @cols_size
      else # STANDARD_SPLIT
        (col - @cols_size + 1) * -1 + @cols_size
      end
    end
    @skip_positions.include?([row, col2])
  end

  # Input
  #   name:    default, map: [ [ :KC_A, :KC_B, :KC_LCTL,   :MACRO_1 ],... ]
  # ↓
  # Result
  #   layer: { default:      [ [ -0x04, -0x05, 0b00000001, :MACRO_1 ],... ] }
  def add_layer(name, map)
    new_map = Array.new
    new_map[0] = Array.new
    row_index = 0
    col_index = 0
    map.each do |key|
      if entire_cols_size <= col_index
        row_index += 1
        col_index = 0
        new_map[row_index] = Array.new
      end
      while skip_position?(row_index, col_index)
        new_map[row_index][calculate_col_position(col_index)] = 0
        col_index += 1
        if entire_cols_size <= col_index
          row_index += 1
          col_index = 0
          new_map[row_index] = Array.new
        end
      end
      col_position = calculate_col_position(col_index)
      case key.class
      when Symbol
        # @type var map: Array[Symbol]
        # @type var key: Symbol
        new_map[row_index][col_position] = find_keycode_index(key)
      when Array
        # @type var map: Array[Array[Symbol]]
        # @type var key: Array[Symbol]
        composite_key = key.join("_").to_sym
        new_map[row_index][col_position] = composite_key
        @composite_keys << {
          layer: name,
          keycodes: convert_composite_keys(key),
          switch: [row_index, col_position]
        }
      end
      col_index += 1
    end
    @keymaps[name] = new_map
    @layer_names << name
  end

  def entire_cols_size
    @entire_cols_size ||= @split ? @cols_size * 2 : @cols_size
  end

  def calculate_col_position(col_index)
    return col_index unless @split
    case @split_style
    # `when STANDARD_SPLIT` can be deleted after fixing a picoruby's bug
    #   https://github.com/picoruby/picoruby/issues/74
    when STANDARD_SPLIT
      col_index
    when RIGHT_SIDE_FLIPPED_SPLIT
      if col_index < @cols_size
        col_index
      else
        entire_cols_size - (col_index - @cols_size) - 1
      end
    else
      # Should not happen but be guarded to pass steep check.
      col_index
    end
  end

  def resolve_key_alias(sym)
    KC_ALIASES[sym] || sym
  end

  def find_keycode_index(key)
    key = resolve_key_alias(key)
    keycode_index = KEYCODE.index(key)

    if keycode_index
      keycode_index * -1
    elsif KEYCODE_SFT[key]
      (KEYCODE_SFT[key] + 0x100) * -1
    elsif MOD_KEYCODE[key]
      MOD_KEYCODE[key]
    elsif KEYCODE_RGB[key]
      KEYCODE_RGB[key]
    else
      key
    end
  end

  def convert_composite_keys(keys)
    keys.map do |sym|
      sym = resolve_key_alias(sym)
      keycode_index = KEYCODE.index(sym)
      if keycode_index
        keycode_index * -1
      elsif KEYCODE_SFT[sym]
        (KEYCODE_SFT[sym] + 0x100) * -1
      else # Should be a modifier
        MOD_KEYCODE[sym]
      end
    end
  end

  def define_composite_key(key_name, keys)
    @keymaps.each do |layer, map|
      map.each_with_index do |row, row_index|
        row.each_with_index do |key_symbol, col_index|
          if key_name == key_symbol
            @composite_keys << {
              layer: layer,
              keycodes: convert_composite_keys(keys),
              switch: [row_index, col_index]
            }
          end
        end
      end
    end
  end

  # param[0] :on_release
  # param[1] :on_hold
  # param[2] :release_threshold
  # param[3] :repush_threshold
  def define_mode_key(key_name, param)
    on_release = param[0]
    on_hold = param[1]
    release_threshold = param[2]
    repush_threshold = param[3]
    @keymaps.each do |layer, map|
      map.each_with_index do |row, row_index|
        row.each_with_index do |key_symbol, col_index|
          if key_name == key_symbol
            # @type var on_release_action: Integer | Array[Integer] | Proc | nil
            on_release_action = case on_release.class
            when Symbol
              # @type var on_release: Symbol
              key = resolve_key_alias(on_release)
              keycode_index = KEYCODE.index(key)
              if keycode_index
                keycode_index * -1
              elsif KEYCODE_SFT[key]
                (KEYCODE_SFT[key] + 0x100) * -1
              end
            when Array
              # @type var on_release: Array[Symbol]
              # @type var ary: Array[Integer]
              convert_composite_keys(on_release)
            when Proc
              # @type var on_release: Proc
              on_release
            end
            on_hold_action = if on_hold.is_a?(Symbol)
              # @type var on_hold: Symbol
              MOD_KEYCODE[on_hold] ? MOD_KEYCODE[on_hold] : on_hold
            else
              # @type var on_hold: Proc
              on_hold
            end
            @mode_keys << {
              layer:             layer,
              on_release:        on_release_action,
              on_hold:           on_hold_action,
              release_threshold: (release_threshold || 0),
              repush_threshold:  (repush_threshold || 0),
              switch:            [row_index, col_index],
              prev_state:        :released,
              pushed_at:         0,
              released_at:       0,
            }
          end
        end
      end
    end
  end

  # MOD_KEYCODE = {
  #        KC_LCTL: 0b00000001,
  #        KC_LSFT: 0b00000010,
  #        KC_LALT: 0b00000100,
  #        KC_LGUI: 0b00001000,
  #        KC_RCTL: 0b00010000,
  #        KC_RSFT: 0b00100000,
  #        KC_RALT: 0b01000000,
  #        KC_RGUI: 0b10000000
  # }
  def invert_sft
    if (@modifier & 0b00100010) > 0
       @modifier &= 0b11011101
    else
       @modifier |= 0b00000010
    end
  end

  def before_report(&block)
    @before_filters << block
  end

  def keys_include?(key)
    keycode = KEYCODE.index(key)
    !keycode.nil? && @keycodes.include?(keycode.chr)
  end

  def action_on_release(mode_key)
    case mode_key.class
    when Integer
      # @type var mode_key: Integer
      if mode_key < -255
        @keycodes << ((mode_key + 0x100) * -1).chr
        @modifier |= 0b00000010
      else
        @keycodes << (mode_key * -1).chr
      end
    when Array
      0 # `steep check` will fail if you remove this line 🤔
      # @type var mode_key: Array[Integer]
      mode_key.each do |key|
        if key < -255
          @keycodes << ((key + 0x100) * -1).chr
          @modifier |= 0b00000010
        elsif key < 0
          @keycodes << (key * -1).chr
        else # Should be a modifier
          @modifier |= key
        end
      end
    when Proc
      # @type var mode_key: Proc
      mode_key.call
    end
  end

  # for Encoders
  def send_key(symbol)
    keycode = KEYCODE.index(symbol)
    if keycode
      modifier = 0
      c = keycode.chr
    else
      keycode = KEYCODE_SFT[symbol]
      if keycode
        modifier = 0b00100000
        c = keycode.chr
      else
        keycode = KEYCODE_RGB[symbol]
        if keycode && $rgb
          $rgb.invoke_anchor(symbol)
        end
        return
      end
    end
    report_hid(modifier, "#{c}\000\000\000\000\000")
    sleep_ms 1
    report_hid(0, "\000\000\000\000\000\000")
    sleep_ms 1
  end

  # **************************************************************
  #  For those who are willing to contribute to PRK Firmware:
  #
  #   The author has intentionally made this method big and
  #   redundant for resilience against a change of spec.
  #   Please refrain from "refactoring" for a while.
  # **************************************************************
  def start!
    puts "Starting keyboard task ..."
    @keycodes = Array.new
    prev_layer = :default

    # To avoid unintentional report on startup
    # which happens only on Sparkfun Pro Micro RP2040
    if @split && @anchor
      sleep_ms 500
      while true
        data = uart_anchor(0)
        break if data == 0xFFFFFF
      end
    end

    rgb_message = 0
    while true
      cycle_time = 20
      now = board_millis
      @keycodes.clear

      @switches.clear
      @modifier = 0

      @scan_mode == :matrix ? scan_matrix! : scan_direct!

      # TODO: more features
      $rgb.fifo_push(true) if $rgb && !@switches.empty?

      if @anchor
        # Receive max 3 switches from partner
        if @split
          sleep_ms 3
          if rgb_message > 0
            data24 = uart_anchor(rgb_message)
            rgb_message = 0
          elsif $rgb && $rgb.ping?
            data24 = uart_anchor(0b11100000) # adjusts RGB time
          else
            data24 = uart_anchor(0)
          end
          [data24 & 0xFF, (data24 >> 8) & 0xFF, data24 >> 16].each do |data|
            if data == 0xFF
              # do nothing
            elsif data > 246
              @partner_encoders.each { |encoder| encoder.call_proc_if(data) }
            else
              switch = [data >> 5, data & 0b00011111]
              # To avoid chattering
              @switches << switch unless @switches.include?(switch)
            end
          end
        end

        desired_layer = @layer
        @composite_keys.each do |composite_key|
          next if composite_key[:layer] != @layer
          if @switches.include?(composite_key[:switch])
            action_on_release(composite_key[:keycodes])
          end
        end

        right_after_layer_key_pushed = false

        @mode_keys.each do |mode_key|
          next if mode_key[:layer] != @layer
          if @switches.include?(mode_key[:switch])
            on_hold = mode_key[:on_hold]
            case mode_key[:prev_state]
            when :released
              mode_key[:pushed_at] = now
              mode_key[:prev_state] = :pushed
              if on_hold.is_a?(Symbol)
                desired_layer = on_hold
                right_after_layer_key_pushed = true
              end
            when :pushed
              if !on_hold.is_a?(Symbol) && (now - mode_key[:pushed_at] > mode_key[:release_threshold])
                case on_hold.class
                when Integer
                  # @type var on_hold: Integer
                  @modifier |= on_hold
                when Proc
                  # @type var on_hold: Proc
                  on_hold.call
                end
              end
            when :pushed_then_released
              if now - mode_key[:released_at] <= mode_key[:repush_threshold]
                mode_key[:prev_state] = :pushed_then_released_then_pushed
              end
            when :pushed_then_released_then_pushed
              action_on_release(mode_key[:on_release])
            end
          else
            case mode_key[:prev_state]
            when :pushed
              if now - mode_key[:pushed_at] <= mode_key[:release_threshold]
                action_on_release(mode_key[:on_release])
                mode_key[:prev_state] = :pushed_then_released
              else
                mode_key[:prev_state] = :released
              end
              mode_key[:released_at] = now
              @layer = prev_layer
              prev_layer = :default
            when :pushed_then_released
              if now - mode_key[:released_at] > mode_key[:release_threshold]
                mode_key[:prev_state] = :released
              end
            when :pushed_then_released_then_pushed
              mode_key[:prev_state] = :released
            end
          end
        end

        if @layer != desired_layer
          prev_layer = @layer if prev_layer != :default
          @layer = desired_layer
        end

        # To fix https://github.com/picoruby/prk_firmware/issues/49
        if right_after_layer_key_pushed
          sleep_ms @layer_changed_delay
          next # Skip reporting keycodes
        end

        keymap = @keymaps[@locked_layer || @layer]
        modifier_switch_positions = Array.new
        @switches.each_with_index do |switch, i|
          keycode = keymap[switch[0]][switch[1]]
          next unless keycode.is_a?(Integer)
          if keycode < -255 # Key with SHIFT
            @keycodes << ((keycode + 0x100) * -1).chr
            @modifier |= 0b00100000
          elsif keycode < 0 # Normal keys
            @keycodes << (keycode * -1).chr
          elsif keycode > 0x100
            rgb_message = $rgb.invoke_anchor KEYCODE_RGB.key(keycode)
          else # Should be a modifier key
            @modifier |= keycode
            modifier_switch_positions << i
          end
        end
        # To fix https://github.com/picoruby/prk_firmware/issues/49
        modifier_switch_positions.each do |i|
          @switches.delete_at(i)
        end

        # Macro
        macro_keycode = @macro_keycodes.shift
        if macro_keycode
          if macro_keycode < 0
            @modifier |= 0b00100000
            @keycodes << (macro_keycode * -1).chr
          else
            @keycodes << macro_keycode.chr
          end
          cycle_time = 40 # To avoid accidental skip
        end

        (6 - @keycodes.size).times do
          @keycodes << "\000"
        end

        @before_filters.each do |block|
          block.call
        end

        @encoders.each do |encoder|
          encoder.consume_rotation_anchor
        end

        if @ruby_mode
          code = @keycodes[0].ord
          c = nil
          if @ruby_mode_stop
            @ruby_mode_stop = false if code == 0
          elsif code > 0
            if @modifier & 0b00100010 > 1 # with SHIFT
              if code <= KEYCODE_SFT[:KC_RPRN].to_i
                c = LETTER[code + @SHIFT_LETTER_OFFSET_A]
              elsif code <= KEYCODE_SFT[:KC_QUES].to_i
                c = LETTER[code + @SHIFT_LETTER_OFFSET_UNDS]
              end
            elsif code < @SHIFT_LETTER_THRESHOLD_A
              c = LETTER[code]
            end
            @ruby_mode_stop = true
          end
          if c
            @buffer.put(c)
            @buffer.refresh_screen
          end
        end
        report_hid(@modifier, @keycodes.join)

        if @locked_layer
          # @type ivar @locked_layer: Symbol
          @layer = @locked_layer
        elsif @switches.empty?
          @layer = :default
        end
      else
        # Partner
        @encoders.each do |encoder|
          data = encoder.consume_rotation_partner
          uart_partner_push8(data) if data && data > 0
        end
        @switches.each do |switch|
          # 0b11111111
          #   ^^^      row number (0 to 7)
          #      ^^^^^ col number (0 to 31)
          uart_partner_push8((switch[0] << 5) + switch[1])
        end
        rgb_message = uart_partner
        $rgb.invoke_partner rgb_message if $rgb
      end

      time = cycle_time - (board_millis - now)
      sleep_ms(time) if time > 0
    end

  end

  def scan_matrix!
    # detect physical switches that are pushed
    @matrix.each do |out_pin, in_pins|
      gpio_set_dir(out_pin, GPIO_OUT_LO)
      in_pins.each do |in_pin, switch|
        unless gpio_get(in_pin)
          col = if @anchor_left
            if @anchor
              # left
              switch[1]
            else
              # right
              (switch[1] - @offset_a) * -1 + @offset_b
            end
          else # right side is the anchor
            unless @anchor
              # left
              switch[1]
            else
              # right
              (switch[1] - @offset_a) * -1 + @offset_b
            end
          end
          @switches << [switch[0], col]
        end
      end
      gpio_set_dir(out_pin, GPIO_IN_PULLUP)
    end
  end

  def scan_direct!
    @direct_pins.each_with_index do |col_pin, col|
      if gpio_get(col_pin)
        @switches << [0, col]
      end
    end
  end

  #
  # Actions can be used in keymap.rb
  #

  # Raises layer and keeps it
  def raise_layer
    current_index = @layer_names.index(@locked_layer || @layer)
    return if current_index.nil?
    if current_index < @layer_names.size - 1
      # @type var current_index: Integer
      @locked_layer = @layer_names[current_index + 1]
    else
      @locked_layer = @layer_names.first
    end
  end

  # Lowers layer and keeps it
  def lower_layer
    current_index = @layer_names.index(@locked_layer || @layer)
    return if current_index.nil?
    if current_index == 0
      @locked_layer = @layer_names.last
    else
      # @type var current_index: Integer
      @locked_layer = @layer_names[current_index - 1]
    end
  end

  # Switch to specified layer
  def lock_layer(layer)
    @locked_layer = layer
  end

  def unlock_layer
    @locked_layer = nil
  end

  def macro(text, opts = [:ENTER])
    print text.to_s
    prev_c = ""
    text.to_s.each_char do |c|
      index = LETTER.index(c)
      next unless index
      @macro_keycodes << 0
      if index >= @SHIFT_LETTER_THRESHOLD_UNDS
        @macro_keycodes << (index - @SHIFT_LETTER_OFFSET_UNDS) * -1
      elsif index >= @SHIFT_LETTER_THRESHOLD_A
        @macro_keycodes << (index - @SHIFT_LETTER_OFFSET_A) * -1
      else
        @macro_keycodes << index
      end
    end
    opts.each do |opt|
      @macro_keycodes << 0
      @macro_keycodes << LETTER.index(opt)
      puts if opt == :ENTER
    end
  end

  def eval(script)
    if sandbox_picorbc(script)
      if sandbox_resume
        n = 0
        while sandbox_state != 0 do # 0: TASKSTATE_DORMANT == finished(?)
          sleep_ms 50
          n += 50
          if n > 10000
            puts "Error: Timeout (sandbox_state: #{sandbox_state})"
            break;
          end
        end
        macro("=> #{sandbox_result.inspect}")
      end
    else
      macro("Error: Compile failed")
    end
  end

  def ruby
    if @ruby_mode
      @macro_keycodes << LETTER.index(:ENTER)
      @buffer.adjust_screen
      eval @buffer.dump
      @buffer.clear
      @ruby_mode = false
      if $rgb
        $rgb.effect = @prev_rgb_effect || :rainbow
      end
    else
      @buffer.refresh_screen
      @ruby_mode = true
      @ruby_mode_stop = false
      if $rgb
        @prev_rgb_effect = $rgb.effect
        $rgb.effect = :ruby
      end
    end
  end

end

$mutex = true
