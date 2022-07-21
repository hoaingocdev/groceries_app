part of search;

class _SearchViewState extends TTState<_SearchModel, _SearchView> {
  @override
  Widget buildWithModel(BuildContext context, _SearchModel model) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            buildTextField(model),
            if (model.isShowClose)
              Expanded(
                child: SafeArea(
                  top: false,
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 173 / 280,
                    ),
                    itemBuilder: (_, i) {
                      return TTProducts(
                        productsInfo: model.products[i],
                      );
                    },
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  Widget buildTextField(_SearchModel model) {
    return Padding(
      padding: EdgeInsets.only(top: device.padding.top),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: model.controller,
              onChanged: (v) => model.validate(),
              cursorColor: Cl.cl7C7C7C,
              decoration: InputDecoration(
                suffixIcon: model.isShowClose
                    ? SizedBox(
                        height: 15,
                        width: 15,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(7),
                          onTap: model.onClosedPressed,
                          child: Image.asset(Id.ic_close),
                        ),
                      )
                    : SizedBox(),
                prefixIcon: Image.asset(Id.ic_search),
                filled: true,
                fillColor: Cl.clF2F3F2,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // SizedBox(width: 20),
          IconButton(
            icon: Image.asset(Id.ic_fill),
            onPressed: model.onFiltersPressed,
          )
        ],
      ),
    );
  }
}
