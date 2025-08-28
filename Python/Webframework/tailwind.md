# Tailwind CSS Utility Classes with Examples

Below is a comprehensive list of Tailwind CSS utility classes with examples, organized into tables by category.

## Layout
| Utility | Description | Example |
|---------|-------------|---------|
| container | Centered container | `<div class="container mx-auto p-4">...</div>` |
| block | Block display | `<div class="block">Block</div>` |
| inline | Inline display | `<span class="inline">Inline</span>` |
| inline-block | Inline-block display | `<div class="inline-block">Inline-block</div>` |
| flex | Flex container | `<div class="flex">Flex</div>` |
| inline-flex | Inline flex container | `<div class="inline-flex">Inline Flex</div>` |
| grid | Grid container | `<div class="grid grid-cols-3 gap-2">Grid</div>` |
| hidden | Hidden element | `<div class="hidden">Hidden</div>` |
| relative | Relative positioning | `<div class="relative">...</div>` |
| absolute | Absolute positioning | `<div class="absolute top-2 right-2">ABS</div>` |

## Flexbox
| Utility | Description | Example |
|---------|-------------|---------|
| flex-row | Horizontal direction | `<div class="flex flex-row">...</div>` |
| flex-col | Vertical direction | `<div class="flex flex-col">...</div>` |
| flex-wrap | Wrap items | `<div class="flex flex-wrap">...</div>` |
| items-center | Align items center | `<div class="flex items-center">...</div>` |
| justify-between | Space between | `<div class="flex justify-between">...</div>` |
| flex-grow | Allow grow | `<div class="flex-grow">Grow</div>` |
| flex-shrink | Allow shrink | `<div class="flex-shrink">Shrink</div>` |
| order-1 | Order first | `<div class="order-1">First</div>` |

## Grid
| Utility | Description | Example |
|---------|-------------|---------|
| grid-cols-4 | Four columns | `<div class="grid grid-cols-4 gap-2">...</div>` |
| col-span-2 | Span two columns | `<div class="col-span-2">2 cols</div>` |
| row-span-2 | Span two rows | `<div class="row-span-2">2 rows</div>` |
| gap-4 | Gap between items | `<div class="gap-4">...</div>` |
| place-self-center | Center cell | `<div class="place-self-center">Center</div>` |

## Spacing
| Utility | Description | Example |
|---------|-------------|---------|
| m-4 | Margin 1rem | `<div class="m-4">...</div>` |
| p-4 | Padding 1rem | `<div class="p-4">...</div>` |
| mx-auto | Center horizontally | `<div class="mx-auto">...</div>` |
| space-x-4 | Horizontal gap | `<div class="flex space-x-4">...</div>` |
| space-y-2 | Vertical gap | `<div class="space-y-2">...</div>` |

## Sizing
| Utility | Description | Example |
|---------|-------------|---------|
| w-40 | Width 10rem | `<div class="w-40">...</div>` |
| h-10 | Height 2.5rem | `<div class="h-10">...</div>` |
| w-full | Full width | `<div class="w-full">...</div>` |
| h-screen | Full height | `<div class="h-screen">...</div>` |
| max-w-xs | Max width 20rem | `<div class="max-w-xs">...</div>` |

## Typography
| Utility | Description | Example |
|---------|-------------|---------|
| text-sm | Small text | `<p class="text-sm">Small</p>` |
| text-lg | Large text | `<p class="text-lg">Large</p>` |
| font-bold | Bold text | `<p class="font-bold">Bold</p>` |
| leading-relaxed | Line height | `<p class="leading-relaxed">...</p>` |
| tracking-wide | Letter spacing | `<p class="tracking-wide">...</p>` |
| text-center | Center text | `<p class="text-center">Center</p>` |

## Backgrounds
| Utility | Description | Example |
|---------|-------------|---------|
| bg-blue-500 | Blue background | `<div class="bg-blue-500">...</div>` |
| bg-gradient-to-r | Gradient right | `<div class="bg-gradient-to-r from-purple-500 to-pink-500">...</div>` |
| bg-cover | Cover background | `<div class="bg-cover">...</div>` |

## Borders
| Utility | Description | Example |
|---------|-------------|---------|
| border | Default border | `<div class="border">...</div>` |
| border-2 | 2px border | `<div class="border-2">...</div>` |
| rounded-lg | Large radius | `<div class="rounded-lg">...</div>` |
| border-dashed | Dashed border | `<div class="border-dashed">...</div>` |

## Effects
| Utility | Description | Example |
|---------|-------------|---------|
| shadow-lg | Large shadow | `<div class="shadow-lg">...</div>` |
| opacity-50 | 50% opacity | `<div class="opacity-50">...</div>` |
| mix-blend-multiply | Blend mode | `<div class="mix-blend-multiply">...</div>` |
| blur-sm | Small blur | `<div class="blur-sm">...</div>` |
| backdrop-blur-md | Medium backdrop blur | `<div class="backdrop-blur-md">...</div>` |

## Transitions & Animations
| Utility | Description | Example |
|---------|-------------|---------|
| transition | Enable transitions | `<button class="transition">...</button>` |
| duration-300 | 300ms duration | `<button class="duration-300">...</button>` |
| ease-in-out | Easing | `<button class="ease-in-out">...</button>` |
| animate-spin | Spin animation | `<div class="animate-spin">...</div>` |

## Transform
| Utility | Description | Example |
|---------|-------------|---------|
| transform | Enable transform | `<div class="transform hover:scale-110">...</div>` |
| rotate-6 | Rotate 6deg | `<div class="rotate-6">...</div>` |
| translate-x-4 | Translate X | `<div class="translate-x-4">...</div>` |
| skew-y-3 | Skew Y | `<div class="skew-y-3">...</div>` |

## Interactivity
| Utility | Description | Example |
|---------|-------------|---------|
| cursor-pointer | Pointer cursor | `<button class="cursor-pointer">...</button>` |
| select-none | No text select | `<p class="select-none">...</p>` |
| pointer-events-none | Disable pointer | `<div class="pointer-events-none">...</div>` |

## SVG
| Utility | Description | Example |
|---------|-------------|---------|
| fill-current | Inherit fill color | `<svg class="fill-current text-red-500">...</svg>` |
| stroke-current | Inherit stroke | `<svg class="stroke-current text-blue-500">...</svg>` |

## Miscellaneous
| Utility | Description | Example |
|---------|-------------|---------|
| resize-y | Resizable vertically | `<textarea class="resize-y">...</textarea>` |
| break-all | Break words | `<p class="break-all">...</p>` |

## Responsive & State Variants
| Variant | Example |
|---------|---------|
| sm: | `<div class="sm:text-lg">...</div>` |
| md: | `<div class="md:p-8">...</div>` |
| lg: | `<div class="lg:grid-cols-4">...</div>` |
| hover: | `<button class="hover:bg-blue-600">...</button>` |
| focus: | `<input class="focus:ring-2">...</input>` |
| disabled: | `<button class="disabled:opacity-50" disabled>...</button>` |
| dark: | `<div class="dark:bg-gray-800">...</div>` |