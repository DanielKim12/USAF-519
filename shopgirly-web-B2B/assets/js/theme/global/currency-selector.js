import swal from './sweet-alert';
import utils from '@bigcommerce/stencil-utils';
 
export default function (cartId) {
    function changeCurrency(url, currencyCode) {
       
        $.ajax({
            url,
            contentType: 'application/json',
            method: 'POST',
            data: JSON.stringify({ currencyCode }),
        }).done(() => {
            window.location.reload();
        }).fail((e) => {
            swal({
                text: JSON.parse(e.responseText).error,
                icon: 'warning',
                showCancelButton: true,
            });
        });
    }
    
 
    $(document.body).on('click', '.currencySelector', () => {
        $('.currency-selection-list').toggleClass('active');
    });
 
    $(document).on('click', '[data-cart-currency-switch-url]', function(event){
        const currencySessionSwitcher = $(this).attr('href');
        
        if (!cartId) {
            return;
        }
        event.preventDefault();
        utils.api.cart.getCart({ cartId }, (err, response) => {
            if (err || response === undefined) {
                window.location.href = currencySessionSwitcher;
                return;
            }
 
            const showWarning = response.discounts.some(discount => discount.discountedAmount > 0) ||
                response.coupons.length > 0 ||
                response.lineItems.giftCertificates.length > 0;
 
            if (showWarning) {                
                swal({
                    text: $(this).data('warning'),
                    icon: 'warning',
                    showCancelButton: true,
                }).then(result => { 
                   
                    if (result && result === true) {
                        changeCurrency($(this).data('cart-currency-switch-url'), $(this).data('currency-code'));
                    }
                });
            } else {
                changeCurrency($(this).data('cart-currency-switch-url'), $(this).data('currency-code'));
            }
        });
    });
}
