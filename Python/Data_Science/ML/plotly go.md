# Complete Plotly Graph Objects Code Examples

This file contains comprehensive code examples for all major chart types available in Plotly Graph Objects.

## Installation and Setup

```python
pip install plotly pandas numpy
```

```python
import plotly.graph_objects as go
from plotly.subplots import make_subplots
import numpy as np
import pandas as pd
```

## 1. Basic Charts

### Line Chart
```python
fig = go.Figure()
x = np.linspace(0, 10, 100)
y = np.sin(x)
fig.add_trace(go.Scatter(x=x, y=y, mode='lines', name='sin(x)'))
fig.update_layout(title='Line Chart', xaxis_title='X', yaxis_title='Y')
fig.show()
```

### Scatter Plot
```python
fig = go.Figure()
x = np.random.randn(100)
y = 2 * x + np.random.randn(100)
fig.add_trace(go.Scatter(x=x, y=y, mode='markers', name='Data Points'))
fig.update_layout(title='Scatter Plot')
fig.show()
```

### Bar Chart
```python
fig = go.Figure()
categories = ['A', 'B', 'C', 'D', 'E']
values = [23, 45, 32, 67, 89]
fig.add_trace(go.Bar(x=categories, y=values, name='Values'))
fig.update_layout(title='Bar Chart')
fig.show()
```

### Horizontal Bar Chart
```python
fig = go.Figure()
fig.add_trace(go.Bar(y=categories, x=values, orientation='h', name='Values'))
fig.update_layout(title='Horizontal Bar Chart')
fig.show()
```

### Pie Chart
```python
fig = go.Figure()
fig.add_trace(go.Pie(labels=categories, values=values, name='Distribution'))
fig.update_layout(title='Pie Chart')
fig.show()
```

### Area Chart
```python
fig = go.Figure()
x = np.linspace(0, 10, 50)
y1 = np.sin(x)
y2 = np.cos(x)
fig.add_trace(go.Scatter(x=x, y=y1, fill='tonexty', name='sin(x)'))
fig.add_trace(go.Scatter(x=x, y=y2, fill='tozeroy', name='cos(x)'))
fig.update_layout(title='Area Chart')
fig.show()
```

## 2. Statistical Charts

### Histogram
```python
fig = go.Figure()
data = np.random.randn(1000)
fig.add_trace(go.Histogram(x=data, name='Distribution'))
fig.update_layout(title='Histogram')
fig.show()
```

### Box Plot
```python
fig = go.Figure()
y1 = np.random.randn(50)
y2 = np.random.randn(50) + 1
fig.add_trace(go.Box(y=y1, name='Group A'))
fig.add_trace(go.Box(y=y2, name='Group B'))
fig.update_layout(title='Box Plot')
fig.show()
```

### Violin Plot
```python
fig = go.Figure()
fig.add_trace(go.Violin(y=y1, name='Group A', box_visible=True))
fig.add_trace(go.Violin(y=y2, name='Group B', box_visible=True))
fig.update_layout(title='Violin Plot')
fig.show()
```

### Strip Chart
```python
fig = go.Figure()
fig.add_trace(go.Box(y=y1, name='Group A', boxpoints='all', jitter=0.3, pointpos=-1.8))
fig.update_layout(title='Strip Chart')
fig.show()
```

## 3. Matrix and Heatmaps

### Heatmap
```python
fig = go.Figure()
z = np.random.randn(10, 10)
fig.add_trace(go.Heatmap(z=z, colorscale='Viridis'))
fig.update_layout(title='Heatmap')
fig.show()
```

### 2D Histogram
```python
fig = go.Figure()
x = np.random.randn(500)
y = np.random.randn(500)
fig.add_trace(go.Histogram2d(x=x, y=y))
fig.update_layout(title='2D Histogram')
fig.show()
```

### Contour Plot
```python
fig = go.Figure()
x = np.linspace(-3, 3, 100)
y = np.linspace(-3, 3, 100)
X, Y = np.meshgrid(x, y)
Z = np.sin(X) * np.cos(Y)
fig.add_trace(go.Contour(x=x, y=y, z=Z))
fig.update_layout(title='Contour Plot')
fig.show()
```

## 4. 3D Charts

### 3D Scatter
```python
fig = go.Figure()
x = np.random.randn(100)
y = np.random.randn(100)
z = np.random.randn(100)
fig.add_trace(go.Scatter3d(x=x, y=y, z=z, mode='markers'))
fig.update_layout(title='3D Scatter Plot')
fig.show()
```

### 3D Surface
```python
fig = go.Figure()
x = np.linspace(-3, 3, 50)
y = np.linspace(-3, 3, 50)
X, Y = np.meshgrid(x, y)
Z = np.sin(np.sqrt(X**2 + Y**2))
fig.add_trace(go.Surface(x=X, y=Y, z=Z))
fig.update_layout(title='3D Surface Plot')
fig.show()
```

### 3D Line
```python
fig = go.Figure()
t = np.linspace(0, 10, 100)
x = np.sin(t)
y = np.cos(t)
z = t
fig.add_trace(go.Scatter3d(x=x, y=y, z=z, mode='lines'))
fig.update_layout(title='3D Line Plot')
fig.show()
```

### 3D Mesh
```python
fig = go.Figure()
fig.add_trace(go.Mesh3d(
    x=[0, 1, 2, 0],
    y=[0, 0, 1, 2],
    z=[0, 2, 0, 1],
    colorbar_title="z",
    colorscale=[[0, 'gold'], [0.5, 'mediumturquoise'], [1, 'magenta']],
    intensity=[0, 0.33, 0.66, 1]
))
fig.update_layout(title='3D Mesh')
fig.show()
```

## 5. Financial Charts

### Candlestick Chart
```python
fig = go.Figure()
dates = pd.date_range('2023-01-01', periods=30, freq='D')
open_prices = 100 + np.cumsum(np.random.randn(30) * 0.5)
high_prices = open_prices + np.abs(np.random.randn(30))
low_prices = open_prices - np.abs(np.random.randn(30))
close_prices = open_prices + np.random.randn(30) * 0.3

fig.add_trace(go.Candlestick(
    x=dates,
    open=open_prices,
    high=high_prices,
    low=low_prices,
    close=close_prices
))
fig.update_layout(title='Candlestick Chart')
fig.show()
```

### OHLC Chart
```python
fig = go.Figure()
fig.add_trace(go.Ohlc(
    x=dates,
    open=open_prices,
    high=high_prices,
    low=low_prices,
    close=close_prices
))
fig.update_layout(title='OHLC Chart')
fig.show()
```

## 6. Geographic Maps

### Scatter Geo
```python
fig = go.Figure()
fig.add_trace(go.Scattergeo(
    lon=[-74.0060, -118.2437, -87.6298],
    lat=[40.7128, 34.0522, 41.8781],
    text=['New York', 'Los Angeles', 'Chicago'],
    mode='markers+text'
))
fig.update_layout(title='Geographic Scatter Plot', geo=dict(scope='usa'))
fig.show()
```

### Choropleth Map
```python
fig = go.Figure()
fig.add_trace(go.Choropleth(
    locations=['CA', 'TX', 'NY'],
    z=[1, 2, 3],
    locationmode='USA-states'
))
fig.update_layout(title='Choropleth Map', geo=dict(scope='usa'))
fig.show()
```

## 7. Polar Charts

### Scatter Polar
```python
fig = go.Figure()
r = np.random.uniform(0, 10, 50)
theta = np.random.uniform(0, 360, 50)
fig.add_trace(go.Scatterpolar(r=r, theta=theta, mode='markers'))
fig.update_layout(title='Polar Scatter Plot')
fig.show()
```

### Line Polar
```python
fig = go.Figure()
theta = np.linspace(0, 360, 100)
r = 1 + np.sin(np.radians(theta * 4))
fig.add_trace(go.Scatterpolar(r=r, theta=theta, mode='lines'))
fig.update_layout(title='Polar Line Plot')
fig.show()
```

### Bar Polar
```python
fig = go.Figure()
fig.add_trace(go.Barpolar(
    r=[1, 2, 3, 4, 5],
    theta=[0, 72, 144, 216, 288],
    name='Bar'
))
fig.update_layout(title='Polar Bar Chart')
fig.show()
```

## 8. Ternary Charts

### Scatter Ternary
```python
fig = go.Figure()
fig.add_trace(go.Scatterternary(
    a=[0.3, 0.4, 0.5],
    b=[0.3, 0.3, 0.2],
    c=[0.4, 0.3, 0.3],
    mode='markers'
))
fig.update_layout(title='Ternary Scatter Plot')
fig.show()
```

## 9. Specialized Charts

### Funnel Chart
```python
fig = go.Figure()
fig.add_trace(go.Funnel(
    y=['Website visit', 'Downloads', 'Potential customers', 'Requested price'],
    x=[39, 27.4, 20.6, 11],
    textinfo="value+percent initial"
))
fig.update_layout(title='Funnel Chart')
fig.show()
```

### Funnel Area Chart
```python
fig = go.Figure()
fig.add_trace(go.Funnelarea(
    text=['Website', 'Downloads', 'Customers', 'Sales'],
    values=[39, 27.4, 20.6, 11]
))
fig.update_layout(title='Funnel Area Chart')
fig.show()
```

### Sunburst Chart
```python
fig = go.Figure()
fig.add_trace(go.Sunburst(
    labels=["Eve", "Cain", "Seth", "Enos", "Noam", "Abel", "Awan", "Enoch", "Azura"],
    parents=["", "Eve", "Eve", "Seth", "Seth", "Eve", "Eve", "Awan", "Eve"],
    values=[10, 14, 12, 10, 2, 6, 6, 4, 4]
))
fig.update_layout(title='Sunburst Chart')
fig.show()
```

### Treemap
```python
fig = go.Figure()
fig.add_trace(go.Treemap(
    labels=["A", "B", "C", "D", "E", "F"],
    parents=["", "A", "A", "B", "B", ""],
    values=[10, 14, 12, 10, 2, 6]
))
fig.update_layout(title='Treemap')
fig.show()
```

### Icicle Chart
```python
fig = go.Figure()
fig.add_trace(go.Icicle(
    labels=["A", "B", "C", "D", "E"],
    parents=["", "A", "A", "B", "B"],
    values=[10, 14, 12, 10, 2]
))
fig.update_layout(title='Icicle Chart')
fig.show()
```

### Sankey Diagram
```python
fig = go.Figure()
fig.add_trace(go.Sankey(
    node=dict(
        pad=15,
        thickness=20,
        line=dict(color="black", width=0.5),
        label=["A1", "A2", "B1", "B2", "C1", "C2"],
        color="blue"
    ),
    link=dict(
        source=[0, 1, 0, 2, 3, 3],
        target=[2, 3, 3, 4, 4, 5],
        value=[8, 4, 2, 8, 4, 2]
    )
))
fig.update_layout(title='Sankey Diagram')
fig.show()
```

### Parallel Coordinates
```python
fig = go.Figure()
fig.add_trace(go.Parcoords(
    line=dict(color=[1, 4, 3, 2, 5]),
    dimensions=list([
        dict(range=[1, 5], label='A', values=[1, 4, 3, 2, 5]),
        dict(range=[1, 5], label='B', values=[3, 1.5, 1.7, 2.2, 4]),
        dict(range=[1, 5], label='C', values=[2.5, 4, 4.5, 5, 2])
    ])
))
fig.update_layout(title='Parallel Coordinates')
fig.show()
```

### Carpet Plot
```python
fig = go.Figure()
fig.add_trace(go.Carpet(
    a=[4, 4, 4, 4.5, 4.5, 4.5, 5, 5, 5, 6, 6, 6],
    b=[1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3],
    y=[2, 3.5, 4, 3, 4.5, 5, 5.5, 6.5, 7.5, 8, 8.5, 10]
))
fig.update_layout(title='Carpet Plot')
fig.show()
```

## 10. Table
```python
fig = go.Figure()
fig.add_trace(go.Table(
    header=dict(values=['A', 'B', 'C']),
    cells=dict(values=[[1, 2, 3], [4, 5, 6], [7, 8, 9]])
))
fig.update_layout(title='Table')
fig.show()
```

## 11. Indicator Gauge
```python
fig = go.Figure()
fig.add_trace(go.Indicator(
    mode="gauge+number",
    value=270,
    domain={'x': [0, 1], 'y': [0, 1]},
    title={'text': "Speed"},
    gauge={'axis': {'range': [None, 500]},
           'bar': {'color': "darkblue"},
           'steps': [{'range': [0, 250], 'color': "lightgray"},
                     {'range': [250, 400], 'color': "gray"}],
           'threshold': {'line': {'color': "red", 'width': 4},
                        'thickness': 0.75, 'value': 490}}))
fig.update_layout(title='Gauge Chart')
fig.show()
```

## 12. Waterfall Chart
```python
fig = go.Figure()
fig.add_trace(go.Waterfall(
    name="20", orientation="v",
    measure=["relative", "relative", "total", "relative", "relative", "total"],
    x=["Sales", "Consulting", "Net revenue", "Purchases", "Other expenses", "Profit before tax"],
    textposition="outside",
    text=["+60", "+80", "", "-40", "-20", "Total"],
    y=[60, 80, 0, -40, -20, 0],
    connector={"line": {"color": "rgb(63, 63, 63)"}}
))
fig.update_layout(title='Waterfall Chart', showlegend=True)
fig.show()
```

## 13. Multiple Subplots Example
```python
from plotly.subplots import make_subplots

# Create subplots with multiple chart types
fig = make_subplots(
    rows=2, cols=2,
    subplot_titles=('Scatter', 'Bar', 'Line', 'Histogram'),
    specs=[[{"secondary_y": False}, {"secondary_y": False}],
           [{"secondary_y": False}, {"secondary_y": False}]]
)

# Add scatter plot
fig.add_trace(go.Scatter(x=[1, 2, 3], y=[4, 5, 6], name='scatter'), row=1, col=1)

# Add bar chart
fig.add_trace(go.Bar(x=['A', 'B', 'C'], y=[1, 3, 2], name='bar'), row=1, col=2)

# Add line plot
fig.add_trace(go.Scatter(x=[1, 2, 3], y=[2, 4, 3], mode='lines', name='line'), row=2, col=1)

# Add histogram
fig.add_trace(go.Histogram(x=np.random.randn(100), name='histogram'), row=2, col=2)

fig.update_layout(height=600, showlegend=False, title_text="Multiple Chart Types in Subplots")
fig.show()
```

## Usage Notes

1. **Installation**: All examples require `plotly`, `pandas`, and `numpy`
2. **Display**: Use `fig.show()` in Jupyter notebooks or `fig.write_html('filename.html')` for standalone files
3. **Customization**: Each chart type supports extensive customization through layout updates
4. **Interactive**: All charts are interactive by default with zoom, pan, and hover capabilities
5. **Export**: Charts can be exported to PNG, PDF, SVG, or HTML formats

This comprehensive collection covers all major visualization types available in Plotly Graph Objects, providing a complete reference for data visualization needs.