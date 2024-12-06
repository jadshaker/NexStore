from fastapi import FastAPI, status
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import HTMLResponse

from src.config import Config
from src.controller.routers import (
    branch_router,
    category_router,
    colors_router,
    coupon_router,
    customer_router,
    department_location_router,
    department_router,
    dependent_router,
    driver_router,
    employee_router,
    located_in_router,
    orders_router,
    product_image_urls_router,
    product_router,
    purchased_router,
    review_image_urls_router,
    reviews_router,
    supplier_router,
    support_ticket_router,
    wishlist_router,
    working_hours_router,
)
from src.controller.status import status_router

app = FastAPI(
    title=Config.APP.TITLE,
    description=Config.APP.DESCRIPTION,
    version=Config.APP.VERSION,
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:3000"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


app.include_router(status_router)
app.include_router(branch_router)
app.include_router(category_router)
app.include_router(colors_router)
app.include_router(coupon_router)
app.include_router(customer_router)
app.include_router(department_location_router)
app.include_router(department_router)
app.include_router(dependent_router)
app.include_router(driver_router)
app.include_router(employee_router)
app.include_router(located_in_router)
app.include_router(orders_router)
app.include_router(product_image_urls_router)
app.include_router(product_router)
app.include_router(purchased_router)
app.include_router(review_image_urls_router)
app.include_router(reviews_router)
app.include_router(supplier_router)
app.include_router(support_ticket_router)
app.include_router(wishlist_router)
app.include_router(working_hours_router)


@app.get("/", response_class=HTMLResponse)
async def root() -> HTMLResponse:
    html_content = """
    <html>
        <head>
            <title>NexStore API</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    padding: 20px;
                }
                h1 {
                    color: #333;
                }
                p {
                    color: #666;
                }
                a {
                    color: #06f;
                }
            </style>
        </head>
        <body>
            <h1>Welcome to the NexStore API</h1>
            <p>To access the docs, visit <a href="/docs">docs</a> or <a href="/redoc">redoc</a></p>
        </body>
    </html>
    """
    return HTMLResponse(content=html_content, status_code=status.HTTP_200_OK)
