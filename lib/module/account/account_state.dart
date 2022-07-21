part of account;

class _AccountViewState extends TTState<_AccountModel, _AccountView> {
  @override
  Widget buildWithModel(BuildContext context, _AccountModel model) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildAccounInfo(),
            const SizedBox(height: 30),
            Container(
              height: 1,
              color: Cl.clE2E2E2,
            ),
            buildItem(
              imageAsset: Id.ic_orders,
              text: 'Orders',
            ),
            buildItem(
              text: 'My Details',
              imageAsset: Id.ic_my_details,
            ),
            buildItem(
              text: 'Delivery Address',
              imageAsset: Id.ic_delicery_address,
            ),
            buildItem(
              text: 'Payment Methods',
              imageAsset: Id.ic_payment,
            ),
            buildItem(
              text: 'Promo Cord',
              imageAsset: Id.ic_promo_cord,
            ),
            buildItem(
              text: 'Notifecations ',
              imageAsset: Id.ic_bell,
            ),
            buildItem(
              text: 'Help',
              imageAsset: Id.ic_help,
            ),
            buildItem(
              text: 'About ',
              imageAsset: Id.ic_about,
            ),
            const SizedBox(height: 52),
            buildButton(),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  Widget buildAccounInfo() {
    return Padding(
      padding: EdgeInsets.only(
        top: 21 + device.padding.top,
        left: 25,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(27),
            child: const TTNetworkImage(
              imageUrl: 'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
              height: 64,
              width: 64,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Afsar Hossen',
                    style: St.body20700.copyWith(color: Cl.cl181725),
                  ),
                  const SizedBox(width: 15),
                  Image.asset(Id.ic_edit)
                ],
              ),
              Text(
                'Imshuvo97@gmail.com',
                style: St.body16400.copyWith(color: Cl.cl7C7C7C),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: InkWell(
        borderRadius: BorderRadius.circular(19),
        onTap: model.onLogOutPressed,
        child: TTButton(
          backgroundColor: Cl.clF2F3F2,
          child: Stack(
            children: [
              Center(
                child: Text(
                  'Log Out',
                  style: St.body18600.copyWith(color: Cl.cl53B175),
                ),
              ),
              Positioned(
                top: 24,
                left: 25,
                child: Image.asset(Id.ic_log_out),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem({
    required String text,
    required String imageAsset,
  }) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Image.asset(imageAsset),
              const SizedBox(width: 21),
              Text(
                text,
                style: St.body18600.copyWith(color: Cl.cl181725),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 1,
          color: Cl.clE2E2E2,
        ),
      ],
    );
  }
}
